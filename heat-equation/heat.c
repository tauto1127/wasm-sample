// heat_bench_pthreads.c
// A research-oriented heat diffusion (2D stencil) benchmark for multithreaded checkpointing.
//
// Key properties:
// - Deterministic numerical update (Jacobi 2-buffer). No races on the grid.
// - Clear step boundaries with a reusable barrier.
// - Optional "stress" phases that intentionally create blocked threads on
//   mutex / condition-variable / join / barrier-wait, useful for checkpoint research.
// - A weak checkpoint hook you can override at link time, or edit in-place.
//
// Build (Linux):
//   gcc -O2 -std=c11 -pthread heat_bench_pthreads.c -o heat_bench
// Run:
//   ./heat_bench nx ny steps nthreads [stress] [checkpoint_every] [stress_every] [print_every] [stress_iters]
//
// Notes:
// - nthreads==0 runs in pure single-thread mode (no pthread_create).
// - The "stress" phase does NOT change the grid values; it is purely for
//   creating synchronization states for your checkpoint mechanism.
// - The program prints a checksum at the end to support regression tests.

#define _GNU_SOURCE
#include <errno.h>
#include <inttypes.h>
#include <pthread.h>
#include <stdatomic.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

// ----------------------------- Utility -----------------------------

static void die(const char *msg) {
    fprintf(stderr, "FATAL: %s\n", msg);
    exit(1);
}

static void die_errno(const char *what, int err) {
    fprintf(stderr, "FATAL: %s: %s\n", what, strerror(err));
    exit(1);
}

static long long parse_ll(const char *s, const char *name) {
    errno = 0;
    char *end = NULL;
    long long v = strtoll(s, &end, 10);
    if (errno != 0 || end == s || *end != '\0') {
        fprintf(stderr, "Invalid %s: '%s'\n", name, s);
        exit(1);
    }
    return v;
}

static void spin_delay(long long iters) {
    // Busy spin to keep a thread "in" a state without relying on sleep.
    // (Works in WASI environments where nanosleep may be absent.)
    volatile long long x = 0;
    for (long long i = 0; i < iters; i++) {
        x += (i ^ 0x9e3779b97f4a7c15ULL) & 7;
    }
    (void)x;
}

static uint64_t now_ns(void) {
    struct timespec ts;
    const clockid_t cid = CLOCK_MONOTONIC;

    if (clock_gettime(cid, &ts) != 0) {
        // If timing is unavailable, just return 0.
        return 0;
    }
    return (uint64_t)ts.tv_sec * 1000000000ull + (uint64_t)ts.tv_nsec;
}

// ----------------------------- Barrier -----------------------------

typedef struct {
    pthread_mutex_t m;
    pthread_cond_t cv;
    int trip;
    int count;
    int gen;
} barrier_t;

static void barrier_init(barrier_t *b, int trip) {
    if (trip <= 0) die("barrier trip must be > 0");
    int rc;
    if ((rc = pthread_mutex_init(&b->m, NULL)) != 0) die_errno("pthread_mutex_init", rc);
    if ((rc = pthread_cond_init(&b->cv, NULL)) != 0) die_errno("pthread_cond_init", rc);
    b->trip = trip;
    b->count = 0;
    b->gen = 0;
}

static void barrier_destroy(barrier_t *b) {
    pthread_mutex_destroy(&b->m);
    pthread_cond_destroy(&b->cv);
}

static void barrier_wait(barrier_t *b) {
    int rc = pthread_mutex_lock(&b->m);
    if (rc != 0) die_errno("pthread_mutex_lock", rc);

    int mygen = b->gen;
    b->count++;
    if (b->count == b->trip) {
        b->count = 0;
        b->gen++;
        rc = pthread_cond_broadcast(&b->cv);
        if (rc != 0) die_errno("pthread_cond_broadcast", rc);
        rc = pthread_mutex_unlock(&b->m);
        if (rc != 0) die_errno("pthread_mutex_unlock", rc);
        return;
    }

    while (mygen == b->gen) {
        rc = pthread_cond_wait(&b->cv, &b->m);
        if (rc != 0) die_errno("pthread_cond_wait", rc);
    }

    rc = pthread_mutex_unlock(&b->m);
    if (rc != 0) die_errno("pthread_mutex_unlock", rc);
}

// ----------------------------- Benchmark config -----------------------------

typedef enum {
    STRESS_NONE = 0,
    STRESS_BARRIER_WAIT,
    STRESS_MUTEX,
    STRESS_COND,
    STRESS_JOIN,
} stress_mode_t;

typedef struct {
    int nx;
    int ny;
    int steps;
    int nthreads; // effective runtime threads (>=1)

    double cx;
    double cy;

    stress_mode_t stress;
    int checkpoint_every; // 0 disables
    int stress_every;     // apply stress every N steps
    int print_every;      // 0 disables
    long long stress_iters;

    // Hot rectangle (inclusive/exclusive)
    int hot_x0, hot_x1;
    int hot_y0, hot_y1;
    double hot_temp;

    int verbose;
} config_t;

static stress_mode_t parse_stress(const char *s) {
    if (!s || strcmp(s, "none") == 0) return STRESS_NONE;
    if (strcmp(s, "barrier") == 0) return STRESS_BARRIER_WAIT;
    if (strcmp(s, "mutex") == 0) return STRESS_MUTEX;
    if (strcmp(s, "cond") == 0) return STRESS_COND;
    if (strcmp(s, "join") == 0) return STRESS_JOIN;
    fprintf(stderr, "Unknown stress mode '%s' (use: none|barrier|mutex|cond|join)\n", s);
    exit(1);
}

static const char *stress_name(stress_mode_t m) {
    switch (m) {
        case STRESS_NONE: return "none";
        case STRESS_BARRIER_WAIT: return "barrier";
        case STRESS_MUTEX: return "mutex";
        case STRESS_COND: return "cond";
        case STRESS_JOIN: return "join";
        default: return "unknown";
    }
}

// ----------------------------- Grid -----------------------------

typedef double real_t;

static inline size_t idx2(int x, int y, int ny) {
    return (size_t)x * (size_t)ny + (size_t)y;
}

static void init_grid(real_t *A, real_t *B, const config_t *cfg) {
    const int nx = cfg->nx, ny = cfg->ny;
    // boundary fixed at 0
    for (int x = 0; x < nx; x++) {
        for (int y = 0; y < ny; y++) {
            real_t v = 0.0;
            if (x >= cfg->hot_x0 && x < cfg->hot_x1 && y >= cfg->hot_y0 && y < cfg->hot_y1) {
                // keep hot region inside boundaries, but if user sets it on boundary it's okay
                v = (real_t)cfg->hot_temp;
            }
            A[idx2(x, y, ny)] = v;
            B[idx2(x, y, ny)] = v;
        }
    }

    // Force boundary to 0 explicitly for safety.
    for (int x = 0; x < nx; x++) {
        A[idx2(x, 0, ny)] = 0.0;
        A[idx2(x, ny - 1, ny)] = 0.0;
        B[idx2(x, 0, ny)] = 0.0;
        B[idx2(x, ny - 1, ny)] = 0.0;
    }
    for (int y = 0; y < ny; y++) {
        A[idx2(0, y, ny)] = 0.0;
        A[idx2(nx - 1, y, ny)] = 0.0;
        B[idx2(0, y, ny)] = 0.0;
        B[idx2(nx - 1, y, ny)] = 0.0;
    }
}

static void jacobi_update(const real_t *A, real_t *B, const config_t *cfg, int x0, int x1) {
    const int nx = cfg->nx, ny = cfg->ny;
    const real_t cx = (real_t)cfg->cx;
    const real_t cy = (real_t)cfg->cy;

    // Update interior only.
    if (x0 < 1) x0 = 1;
    if (x1 > nx - 1) x1 = nx - 1;

    for (int x = x0; x < x1; x++) {
        size_t row = (size_t)x * (size_t)ny;
        for (int y = 1; y < ny - 1; y++) {
            const real_t c  = A[row + y];
            const real_t up = A[row - ny + y];
            const real_t dn = A[row + ny + y];
            const real_t lf = A[row + y - 1];
            const real_t rt = A[row + y + 1];

            // Explicit scheme similar to the code you shared.
            const real_t v = c + cx * (dn + up - 2.0 * c) + cy * (rt + lf - 2.0 * c);
            B[row + y] = v;
        }
    }

    // Boundaries remain unchanged (0). No need to write.
}

static double checksum(const real_t *A, const config_t *cfg) {
    // Deterministic sequential checksum.
    const int nx = cfg->nx, ny = cfg->ny;
    double s = 0.0;
    for (int x = 0; x < nx; x++) {
        for (int y = 0; y < ny; y++) {
            // A tiny position-dependent weight to reduce accidental cancellations.
            s += (double)A[idx2(x, y, ny)] * (1.0 + 1e-9 * (double)(x * 1315423911u + y * 2654435761u));
        }
    }
    return s;
}

static void print_samples(const real_t *A, const config_t *cfg) {
    // Safe sample points relative to grid size.
    const int nx = cfg->nx, ny = cfg->ny;
    int pts[][2] = {
        {1, 1},
        {nx / 6, ny / 6},
        {nx / 2, ny / 2},
        {nx * 3 / 4, ny * 3 / 4},
        {nx - 2, ny - 2},
    };
    const int npts = (int)(sizeof(pts) / sizeof(pts[0]));

    fprintf(stdout, "samples:");
    for (int i = 0; i < npts; i++) {
        int x = pts[i][0];
        int y = pts[i][1];
        if (x < 0) x = 0;
        if (x >= nx) x = nx - 1;
        if (y < 0) y = 0;
        if (y >= ny) y = ny - 1;
        fprintf(stdout, " [%d,%d]=%.6f", x, y, (double)A[idx2(x, y, ny)]);
    }
    fprintf(stdout, "\n");
}

// ----------------------------- Checkpoint hook -----------------------------

// Override this function in another translation unit to integrate your checkpoint mechanism.
// For example, compile your checkpoint code into checkpoint_impl.c with:
//   void checkpoint_hook(int step, const char *phase) { checkpoint(); }
// and link both files.
__attribute__((weak)) void checkpoint_hook(int step, const char *phase) {
    (void)step;
    (void)phase;
}

static inline void maybe_checkpoint(const config_t *cfg, int step, const char *phase, int tid) {
    if (tid != 0) return; // single initiator by default
    if (cfg->checkpoint_every <= 0) return;
    if (step % cfg->checkpoint_every != 0) return;
    checkpoint_hook(step, phase);
}

// ----------------------------- Stress mechanisms -----------------------------

static pthread_mutex_t g_stress_mutex = PTHREAD_MUTEX_INITIALIZER;
static atomic_int g_mutex_waiters;

static pthread_mutex_t g_cond_mutex = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t  g_cond_cv = PTHREAD_COND_INITIALIZER;
static int g_cond_waiters = 0; // protected by g_cond_mutex
static int g_cond_go = 0;      // protected by g_cond_mutex

typedef struct {
    atomic_int release;
} join_shared_t;

static join_shared_t g_join_shared;
static pthread_t g_join_target;
static atomic_int g_join_waiter_ready;

static void *join_target_fn(void *arg) {
    join_shared_t *js = (join_shared_t *)arg;
    while (atomic_load_explicit(&js->release, memory_order_acquire) == 0) {
        // keep it running
    }
    return NULL;
}

static atomic_int g_bw_waiters;

static void stress_phase(const config_t *cfg, barrier_t *bar, int step, int tid) {
    if (cfg->stress == STRESS_NONE) return;
    if (cfg->stress_every <= 0) return;
    if (step % cfg->stress_every != 0) return;

    const int n = cfg->nthreads;

    switch (cfg->stress) {
        case STRESS_BARRIER_WAIT: {
            // All threads synchronize at an extra barrier. Threads 1..N-1 enter
            // the barrier early and block; tid0 calls the checkpoint hook while
            // others are blocked, then enters the barrier.
            if (tid != 0) {
                atomic_fetch_add_explicit(&g_bw_waiters, 1, memory_order_acq_rel);
            } else {
                while (atomic_load_explicit(&g_bw_waiters, memory_order_acquire) < n - 1) {
                    // wait until everyone else is ready to block
                }
                maybe_checkpoint(cfg, step, "stress:barrier_wait", tid);
                if (cfg->stress_iters > 0) spin_delay(cfg->stress_iters);
                atomic_store_explicit(&g_bw_waiters, 0, memory_order_release);
            }
            barrier_wait(bar);
            break;
        }

        case STRESS_MUTEX: {
            // Create blocked threads on a single mutex.
            // tid0 locks and holds the mutex; others attempt lock and block.
            if (tid == 0) {
                atomic_store_explicit(&g_mutex_waiters, 0, memory_order_release);
                int rc = pthread_mutex_lock(&g_stress_mutex);
                if (rc != 0) die_errno("pthread_mutex_lock(stress)", rc);
            }
            barrier_wait(bar); // ensure mutex is held before others try

            if (tid != 0) {
                atomic_fetch_add_explicit(&g_mutex_waiters, 1, memory_order_acq_rel);
                int rc = pthread_mutex_lock(&g_stress_mutex); // will block until tid0 releases
                if (rc != 0) die_errno("pthread_mutex_lock(stress,waiter)", rc);
                rc = pthread_mutex_unlock(&g_stress_mutex);
                if (rc != 0) die_errno("pthread_mutex_unlock(stress,waiter)", rc);
            } else {
                while (atomic_load_explicit(&g_mutex_waiters, memory_order_acquire) < n - 1) {
                    // wait until all others are trying
                }
                maybe_checkpoint(cfg, step, "stress:mutex_blocked", tid);
                if (cfg->stress_iters > 0) spin_delay(cfg->stress_iters);
                int rc = pthread_mutex_unlock(&g_stress_mutex);
                if (rc != 0) die_errno("pthread_mutex_unlock(stress)", rc);
            }

            barrier_wait(bar);
            break;
        }

        case STRESS_COND: {
            if (n < 2) break;

            if (tid == 0) {
                int rc = pthread_mutex_lock(&g_cond_mutex);
                if (rc != 0) die_errno("pthread_mutex_lock(cond)", rc);
                g_cond_waiters = 0;
                g_cond_go = 0;
                rc = pthread_mutex_unlock(&g_cond_mutex);
                if (rc != 0) die_errno("pthread_mutex_unlock(cond)", rc);
            }
            barrier_wait(bar); // ensure reset done

            if (tid != 0) {
                int rc = pthread_mutex_lock(&g_cond_mutex);
                if (rc != 0) die_errno("pthread_mutex_lock(cond,waiter)", rc);
                g_cond_waiters++;
                while (!g_cond_go) {
                    rc = pthread_cond_wait(&g_cond_cv, &g_cond_mutex);
                    if (rc != 0) die_errno("pthread_cond_wait", rc);
                }
                rc = pthread_mutex_unlock(&g_cond_mutex);
                if (rc != 0) die_errno("pthread_mutex_unlock(cond,waiter)", rc);
            } else {
                // wait until all others are waiting
                while (1) {
                    int rc = pthread_mutex_lock(&g_cond_mutex);
                    if (rc != 0) die_errno("pthread_mutex_lock(cond,tid0)", rc);
                    int w = g_cond_waiters;
                    rc = pthread_mutex_unlock(&g_cond_mutex);
                    if (rc != 0) die_errno("pthread_mutex_unlock(cond,tid0)", rc);
                    if (w >= n - 1) break;
                }

                int rc = pthread_mutex_lock(&g_cond_mutex);
                if (rc != 0) die_errno("pthread_mutex_lock(cond,signal)", rc);
                maybe_checkpoint(cfg, step, "stress:cond_wait", tid);
                if (cfg->stress_iters > 0) spin_delay(cfg->stress_iters);
                g_cond_go = 1;
                rc = pthread_cond_broadcast(&g_cond_cv);
                if (rc != 0) die_errno("pthread_cond_broadcast", rc);
                rc = pthread_mutex_unlock(&g_cond_mutex);
                if (rc != 0) die_errno("pthread_mutex_unlock(cond,signal)", rc);
            }

            barrier_wait(bar);
            break;
        }

        case STRESS_JOIN: {
            if (n < 2) break;

            if (tid == 0) {
                atomic_store_explicit(&g_join_shared.release, 0, memory_order_release);
                atomic_store_explicit(&g_join_waiter_ready, 0, memory_order_release);
                int rc = pthread_create(&g_join_target, NULL, join_target_fn, &g_join_shared);
                if (rc != 0) die_errno("pthread_create(join_target)", rc);
            }
            barrier_wait(bar); // ensure join_target exists

            if (tid == 1) {
                atomic_store_explicit(&g_join_waiter_ready, 1, memory_order_release);
                // This join will block until tid0 sets release=1.
                int rc = pthread_join(g_join_target, NULL);
                if (rc != 0) die_errno("pthread_join(join_target)", rc);
            } else if (tid == 0) {
                while (atomic_load_explicit(&g_join_waiter_ready, memory_order_acquire) == 0) {
                    // wait until tid1 is about to join
                }
                maybe_checkpoint(cfg, step, "stress:join_wait", tid);
                if (cfg->stress_iters > 0) spin_delay(cfg->stress_iters);
                atomic_store_explicit(&g_join_shared.release, 1, memory_order_release);
            }

            barrier_wait(bar);
            break;
        }

        default:
            break;
    }
}

// ----------------------------- Worker -----------------------------

typedef struct {
    int tid;
    const config_t *cfg;
    barrier_t *bar;
    real_t **A; // pointer to global pointer
    real_t **B;
    int x0;
    int x1;
} worker_arg_t;

static void *worker_fn(void *p) {
    worker_arg_t *wa = (worker_arg_t *)p;
    const config_t *cfg = wa->cfg;

    for (int step = 1; step <= cfg->steps; step++) {
        // Local snapshot of pointers for this step.
        real_t *A = *wa->A;
        real_t *B = *wa->B;

        jacobi_update(A, B, cfg, wa->x0, wa->x1);

        // Compute barrier
        barrier_wait(wa->bar);

        // Optional stress phase (can add extra barriers internally)
        stress_phase(cfg, wa->bar, step, wa->tid);

        // Swap A/B once per step
        if (wa->tid == 0) {
            real_t *tmp = *wa->A;
            *wa->A = *wa->B;
            *wa->B = tmp;

            // Safe point: after the swap completes, before next barrier.
            maybe_checkpoint(cfg, step, "after_swap", wa->tid);

            if (cfg->print_every > 0 && (step % cfg->print_every == 0)) {
                print_samples(*wa->A, cfg);
            }
        }

        // Swap barrier (ensures all threads see updated pointers before next step)
        barrier_wait(wa->bar);
    }

    return NULL;
}

// ----------------------------- Main -----------------------------

static void usage(const char *argv0) {
    fprintf(stderr,
            "Usage: %s nx ny steps nthreads [stress] [checkpoint_every] [stress_every] [print_every] [stress_iters]\n"
            "  nthreads: 0 => single-thread (no pthread_create), >=1 => pthread workers\n"
            "  stress: none|barrier|mutex|cond|join (default: none)\n"
            "  checkpoint_every: call checkpoint_hook every N steps (0 disables, default 0)\n"
            "  stress_every: apply stress every N steps (default 1)\n"
            "  print_every: print sample cells every N steps (0 disables, default 0)\n"
            "  stress_iters: busy-spin iterations while threads are blocked (default 0)\n"
            "Examples:\n"
            "  %s 1000 1000 200 0\n"
            "  %s 1000 1000 200 8 mutex 1 1 0 2000000\n",
            argv0, argv0, argv0);
}

int main(int argc, char **argv) {
    if (argc < 5) {
        usage(argv[0]);
        return 1;
    }

    config_t cfg;
    memset(&cfg, 0, sizeof(cfg));

    cfg.nx = (int)parse_ll(argv[1], "nx");
    cfg.ny = (int)parse_ll(argv[2], "ny");
    cfg.steps = (int)parse_ll(argv[3], "steps");
    cfg.nthreads = (int)parse_ll(argv[4], "nthreads");

    if (cfg.nx < 3 || cfg.ny < 3) die("nx and ny must be >= 3");
    if (cfg.steps < 1) die("steps must be >= 1");
    if (cfg.nthreads < 0) die("nthreads must be >= 0");

    int user_nthreads = cfg.nthreads;
    int run_threads = (cfg.nthreads == 0) ? 1 : cfg.nthreads;
    cfg.nthreads = run_threads; // make effective for the rest of the program

    cfg.cx = 0.125;
    cfg.cy = 0.11;

    cfg.stress = (argc >= 6) ? parse_stress(argv[5]) : STRESS_NONE;
    cfg.checkpoint_every = (argc >= 7) ? (int)parse_ll(argv[6], "checkpoint_every") : 0;
    cfg.stress_every = (argc >= 8) ? (int)parse_ll(argv[7], "stress_every") : 1;
    cfg.print_every = (argc >= 9) ? (int)parse_ll(argv[8], "print_every") : 0;
    cfg.stress_iters = (argc >= 10) ? parse_ll(argv[9], "stress_iters") : 0;

    if (cfg.stress_every < 1) cfg.stress_every = 1;
    if (cfg.checkpoint_every < 0) cfg.checkpoint_every = 0;
    if (cfg.print_every < 0) cfg.print_every = 0;
    if (cfg.stress_iters < 0) cfg.stress_iters = 0;

    // Default hot rectangle: center 60% of the grid
    cfg.hot_x0 = cfg.nx / 5;
    cfg.hot_x1 = cfg.nx * 4 / 5;
    cfg.hot_y0 = cfg.ny / 5;
    cfg.hot_y1 = cfg.ny * 4 / 5;
    cfg.hot_temp = 500.0;

    // Ensure hot region stays within bounds
    if (cfg.hot_x0 < 1) cfg.hot_x0 = 1;
    if (cfg.hot_y0 < 1) cfg.hot_y0 = 1;
    if (cfg.hot_x1 > cfg.nx - 1) cfg.hot_x1 = cfg.nx - 1;
    if (cfg.hot_y1 > cfg.ny - 1) cfg.hot_y1 = cfg.ny - 1;

    fprintf(stdout,
            "heat_bench: nx=%d ny=%d steps=%d nthreads=%d (effective=%d) stress=%s checkpoint_every=%d stress_every=%d print_every=%d stress_iters=%lld\n",
            cfg.nx, cfg.ny, cfg.steps, user_nthreads, cfg.nthreads, stress_name(cfg.stress),
            cfg.checkpoint_every, cfg.stress_every, cfg.print_every, cfg.stress_iters);

    size_t ncell = (size_t)cfg.nx * (size_t)cfg.ny;
    if (ncell == 0 || ncell > (size_t)1e9) {
        die("grid size too large");
    }

    real_t *A = (real_t *)malloc(ncell * sizeof(real_t));
    real_t *B = (real_t *)malloc(ncell * sizeof(real_t));
    if (!A || !B) {
        die("malloc failed");
    }

    init_grid(A, B, &cfg);

    // Shared pointers for swapping.
    real_t *gA = A;
    real_t *gB = B;

    barrier_t bar;
    barrier_init(&bar, cfg.nthreads);

    // Partition interior rows [1, nx-1) among threads.
    const int interior = cfg.nx - 2;
    const int base = interior / cfg.nthreads;
    const int rem = interior % cfg.nthreads;

    uint64_t t0 = now_ns();

    if (user_nthreads == 0) {
        // Pure single-thread mode: no pthread_create.
        worker_arg_t arg;
        memset(&arg, 0, sizeof(arg));
        arg.tid = 0;
        arg.cfg = &cfg;
        arg.bar = &bar;
        arg.A = &gA;
        arg.B = &gB;
        arg.x0 = 1;
        arg.x1 = cfg.nx - 1; // interior end

        (void)worker_fn(&arg);
    } else {
        pthread_t *ths = (pthread_t *)calloc((size_t)cfg.nthreads, sizeof(pthread_t));
        worker_arg_t *args = (worker_arg_t *)calloc((size_t)cfg.nthreads, sizeof(worker_arg_t));
        if (!ths || !args) die("calloc failed");

        for (int tid = 0; tid < cfg.nthreads; tid++) {
            int extra = (tid < rem) ? 1 : 0;
            int off = tid * base + (tid < rem ? tid : rem);
            int x0 = 1 + off;
            int x1 = x0 + base + extra;

            args[tid].tid = tid;
            args[tid].cfg = &cfg;
            args[tid].bar = &bar;
            args[tid].A = &gA;
            args[tid].B = &gB;
            args[tid].x0 = x0;
            args[tid].x1 = x1;

            int rc = pthread_create(&ths[tid], NULL, worker_fn, &args[tid]);
            if (rc != 0) die_errno("pthread_create", rc);
        }

        for (int tid = 0; tid < cfg.nthreads; tid++) {
            int rc = pthread_join(ths[tid], NULL);
            if (rc != 0) die_errno("pthread_join", rc);
        }

        free(ths);
        free(args);
    }

    uint64_t t1 = now_ns();

    // gA points to the final grid.
    double s = checksum(gA, &cfg);
    fprintf(stdout, "checksum=%.12f\n", s);

    if (t0 != 0 && t1 != 0 && t1 >= t0) {
        double sec = (double)(t1 - t0) / 1e9;
        fprintf(stdout, "time_sec=%.6f\n", sec);
    }

    barrier_destroy(&bar);

    free(A);
    free(B);

    return 0;
}
