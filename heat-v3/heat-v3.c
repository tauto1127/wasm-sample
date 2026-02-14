// heat_min_pthreads.c
// build: gcc -O2 -std=c11 -pthread heat_min_pthreads.c -o heat_min
// run:   ./heat_min nx ny steps nthreads
//   nthreads=0 => single-thread (no pthread_create)
//
// Notes (determinism):
// - Jacobi 2-buffer (A->B), disjoint row ranges per worker => no write races
// - main participates in per-step barriers and does swap+step++
// - avoid -ffast-math if you want strict reproducibility

#define _POSIX_C_SOURCE 200809L
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

typedef double real_t;

static inline size_t idx2(int x, int y, int ny) {
    return (size_t)x * (size_t)ny + (size_t)y;
}

static inline long long ll(const char *s) {
    char *e = NULL;
    long long v = strtoll(s, &e, 10);
    if (!s[0] || *e) { fprintf(stderr, "bad int: %s\n", s); exit(1); }
    return v;
}

static inline double now_sec(void) {
    struct timespec ts;
    if (clock_gettime(CLOCK_MONOTONIC, &ts) != 0) return 0.0;
    return (double)ts.tv_sec + 1e-9 * (double)ts.tv_nsec;
}

typedef struct {
    int nx, ny, steps;
    int nworkers;          // worker threads (0 allowed)
    double cx, cy;
    int hot_x0, hot_x1;
    int hot_y0, hot_y1;
    double hot_temp;
} cfg_t;

static void init_grid(real_t *A, real_t *B, const cfg_t *c) {
    for (int x = 0; x < c->nx; x++) {
        for (int y = 0; y < c->ny; y++) {
            real_t v = 0.0;
            if (x >= c->hot_x0 && x < c->hot_x1 && y >= c->hot_y0 && y < c->hot_y1) {
                v = (real_t)c->hot_temp;
            }
            A[idx2(x, y, c->ny)] = v;
            B[idx2(x, y, c->ny)] = v;
        }
    }
    // boundary = 0
    for (int x = 0; x < c->nx; x++) {
        A[idx2(x, 0, c->ny)] = 0.0;
        A[idx2(x, c->ny - 1, c->ny)] = 0.0;
        B[idx2(x, 0, c->ny)] = 0.0;
        B[idx2(x, c->ny - 1, c->ny)] = 0.0;
    }
    for (int y = 0; y < c->ny; y++) {
        A[idx2(0, y, c->ny)] = 0.0;
        A[idx2(c->nx - 1, y, c->ny)] = 0.0;
        B[idx2(0, y, c->ny)] = 0.0;
        B[idx2(c->nx - 1, y, c->ny)] = 0.0;
    }
}

static void jacobi_update(const real_t *A, real_t *B, const cfg_t *c, int x0, int x1) {
    if (x0 < 1) x0 = 1;
    if (x1 > c->nx - 1) x1 = c->nx - 1;

    const real_t cx = (real_t)c->cx;
    const real_t cy = (real_t)c->cy;
    const int ny = c->ny;

    for (int x = x0; x < x1; x++) {
        size_t row = (size_t)x * (size_t)ny;
        for (int y = 1; y < ny - 1; y++) {
            const real_t cc = A[row + y];
            const real_t up = A[row - ny + y];
            const real_t dn = A[row + ny + y];
            const real_t lf = A[row + y - 1];
            const real_t rt = A[row + y + 1];
            B[row + y] = cc + cx * (dn + up - 2.0 * cc) + cy * (rt + lf - 2.0 * cc);
        }
    }
}

static double checksum(const real_t *A, const cfg_t *c) {
    double s = 0.0;
    for (int x = 0; x < c->nx; x++) {
        for (int y = 0; y < c->ny; y++) {
            s += (double)A[idx2(x, y, c->ny)] *
                 (1.0 + 1e-9 * (double)(x * 1315423911u + y * 2654435761u));
        }
    }
    return s;
}

typedef struct {
    int tid;
    int x0, x1;
    const cfg_t *cfg;
    pthread_barrier_t *bar_step_done;   // (workers + main)
    pthread_barrier_t *bar_swap_done;   // (workers + main)
    real_t **A; // shared pointers (main swaps)
    real_t **B;
} worker_arg_t;

static void *worker_fn(void *p) {
    worker_arg_t *w = (worker_arg_t *)p;
    const cfg_t *c = w->cfg;

    for (int step = 1; step <= c->steps; step++) {
        // snapshot pointers for this step
        real_t *A = *w->A;
        real_t *B = *w->B;

        jacobi_update(A, B, c, w->x0, w->x1);

        // 1) all workers finished writing B; main joins here too
        pthread_barrier_wait(w->bar_step_done);

        // 2) main swaps pointers + increments step; release workers after swap
        pthread_barrier_wait(w->bar_swap_done);
    }
    return NULL;
}

int main(int argc, char **argv) {
    if (argc < 5) {
        fprintf(stderr, "Usage: %s nx ny steps nthreads\n", argv[0]);
        return 1;
    }

    cfg_t c;
    memset(&c, 0, sizeof(c));
    c.nx = (int)ll(argv[1]);
    c.ny = (int)ll(argv[2]);
    c.steps = (int)ll(argv[3]);
    int nthreads = (int)ll(argv[4]);

    if (c.nx < 3 || c.ny < 3 || c.steps < 1 || nthreads < 0) {
        fprintf(stderr, "invalid args\n");
        return 1;
    }

    // constants (same style as your original)
    c.cx = 0.125;
    c.cy = 0.11;
    c.hot_x0 = c.nx / 5;
    c.hot_x1 = c.nx * 4 / 5;
    c.hot_y0 = c.ny / 5;
    c.hot_y1 = c.ny * 4 / 5;
    c.hot_temp = 500.0;

    if (c.hot_x0 < 1) c.hot_x0 = 1;
    if (c.hot_y0 < 1) c.hot_y0 = 1;
    if (c.hot_x1 > c.nx - 1) c.hot_x1 = c.nx - 1;
    if (c.hot_y1 > c.ny - 1) c.hot_y1 = c.ny - 1;

    // nthreads=0 => no worker threads
    c.nworkers = (nthreads == 0) ? 0 : nthreads;

    size_t ncell = (size_t)c.nx * (size_t)c.ny;
    real_t *A = (real_t *)malloc(ncell * sizeof(real_t));
    real_t *B = (real_t *)malloc(ncell * sizeof(real_t));
    if (!A || !B) { fprintf(stderr, "malloc failed\n"); return 1; }

    init_grid(A, B, &c);
    real_t *gA = A;
    real_t *gB = B;

    double t0 = now_sec();

    int step_main = 0;

    if (c.nworkers == 0) {
        // single-thread: main does everything (still counts steps in main)
        for (int step = 1; step <= c.steps; step++) {
            jacobi_update(gA, gB, &c, 1, c.nx - 1);
            // main "sync point" (trivial)
            real_t *tmp = gA; gA = gB; gB = tmp;
            step_main++;
        }
    } else {
        // main participates in per-step barriers with workers
        pthread_barrier_t bar_step_done, bar_swap_done;
        unsigned parties = (unsigned)(c.nworkers + 1); // +1 for main
        pthread_barrier_init(&bar_step_done, NULL, parties);
        pthread_barrier_init(&bar_swap_done, NULL, parties);

        pthread_t *ths = (pthread_t *)calloc((size_t)c.nworkers, sizeof(pthread_t));
        worker_arg_t *args = (worker_arg_t *)calloc((size_t)c.nworkers, sizeof(worker_arg_t));
        if (!ths || !args) { fprintf(stderr, "calloc failed\n"); return 1; }

        // partition interior rows [1, nx-1) across workers
        int interior = c.nx - 2;
        int base = interior / c.nworkers;
        int rem  = interior % c.nworkers;

        for (int tid = 0; tid < c.nworkers; tid++) {
            int extra = (tid < rem) ? 1 : 0;
            int off   = tid * base + (tid < rem ? tid : rem);
            int x0 = 1 + off;
            int x1 = x0 + base + extra;

            args[tid].tid = tid;
            args[tid].x0 = x0;
            args[tid].x1 = x1;
            args[tid].cfg = &c;
            args[tid].bar_step_done = &bar_step_done;
            args[tid].bar_swap_done = &bar_swap_done;
            args[tid].A = &gA;
            args[tid].B = &gB;

            if (pthread_create(&ths[tid], NULL, worker_fn, &args[tid]) != 0) {
                fprintf(stderr, "pthread_create failed\n");
                return 1;
            }
        }

        // main step loop: joins both barriers each step, swaps, counts steps
        for (int step = 1; step <= c.steps; step++) {
            pthread_barrier_wait(&bar_step_done); // wait all workers finished step
            real_t *tmp = gA; gA = gB; gB = tmp;   // swap in main
            step_main++;                           // count in main
            if (step_main == 20) {
                __asm__ __volatile__("nop");   
            }
            pthread_barrier_wait(&bar_swap_done);  // release workers after swap
        }

        for (int tid = 0; tid < c.nworkers; tid++) pthread_join(ths[tid], NULL);

        pthread_barrier_destroy(&bar_step_done);
        pthread_barrier_destroy(&bar_swap_done);
        free(ths);
        free(args);
    }

    double t1 = now_sec();

    printf("steps_main=%d\n", step_main);
    printf("checksum=%.12f\n", checksum(gA, &c));
    printf("time_sec=%.6f\n", (t0 > 0.0 && t1 >= t0) ? (t1 - t0) : 0.0);

    free(A);
    free(B);
    return 0;
}