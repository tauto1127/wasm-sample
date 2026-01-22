#define _GNU_SOURCE
#include <pthread.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <errno.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <inttypes.h>

#ifndef NUM_ACCOUNTS
#define NUM_ACCOUNTS 8
#endif
#define NUM_WORKERS 4

#define INITIAL_BALANCE 100000
#define TRANSFER_AMOUNT 7

/* 1 round あたりの各workerの送金回数 */
#define TRANSFERS_PER_ROUND 2000

/* coordinator が 1 round の完了を待つ最大時間（ms） */
#define ROUND_TIMEOUT_MS 30000

/* “ロック保持が長い” 状況を定期的に作る（thread C/R の地雷） */
#define HOLD_EVERY_ROUNDS 40
#define HOLD_DURATION_MS  80   /* この間、2口座ロックを保持して他スレッドを詰まらせる */

static volatile int g_running = 1;

/* ---------- utils ---------- */

static void fatal(const char *msg) {
    fprintf(stderr, "\nFATAL: %s (errno=%d: %s)\n", msg, errno, strerror(errno));
    fflush(stderr);
    _exit(2);
}

static uint64_t mono_ns(void) {
    struct timespec ts;
    if (clock_gettime(CLOCK_MONOTONIC, &ts) != 0) fatal("clock_gettime(CLOCK_MONOTONIC)");
    return (uint64_t)ts.tv_sec * 1000000000ull + (uint64_t)ts.tv_nsec;
}

static void add_ms_to_timespec(struct timespec *ts, long add_ms) {
    ts->tv_nsec += (add_ms % 1000) * 1000000L;
    ts->tv_sec  += add_ms / 1000;
    if (ts->tv_nsec >= 1000000000L) {
        ts->tv_sec += 1;
        ts->tv_nsec -= 1000000000L;
    }
}

static void spin_hold_ms(int ms) {
    uint64_t end = mono_ns() + (uint64_t)ms * 1000000ull;
    while (mono_ns() < end) {
        /* busy wait: 余計な機能を使わず“保持時間”を作る */
    }
}

/* ---------- bank ---------- */

typedef struct {
    int64_t balance;
    pthread_mutex_t mu;
} Account;

static Account g_accounts[NUM_ACCOUNTS];
static const int64_t g_expected_total = (int64_t)NUM_ACCOUNTS * (int64_t)INITIAL_BALANCE;

static void accounts_init(void) {
    for (int i = 0; i < NUM_ACCOUNTS; i++) {
        g_accounts[i].balance = INITIAL_BALANCE;
        if (pthread_mutex_init(&g_accounts[i].mu, NULL) != 0) fatal("pthread_mutex_init(account)");
    }
}

/* デッドロック回避：インデックス順にロック */
static inline void lock_two(int a, int b) {
    int first = (a < b) ? a : b;
    int second = (a < b) ? b : a;
    pthread_mutex_lock(&g_accounts[first].mu);
    pthread_mutex_lock(&g_accounts[second].mu);
}

static inline void unlock_two(int a, int b) {
    int first = (a < b) ? a : b;
    int second = (a < b) ? b : a;
    pthread_mutex_unlock(&g_accounts[second].mu);
    pthread_mutex_unlock(&g_accounts[first].mu);
}

static bool transfer_once(int from, int to, int64_t amt) {
    if (from == to) return false;

    lock_two(from, to);

    bool ok = false;
    if (g_accounts[from].balance >= amt) {
        g_accounts[from].balance -= amt;
        /* ここで一瞬だけ“隙”を作る（C/Rの再開点が悪いと壊れやすい） */
        for (volatile int k = 0; k < 200; k++) {}
        g_accounts[to].balance += amt;
        ok = true;
    }

    unlock_two(from, to);
    return ok;
}

static int64_t total_balance_locked(void) {
    for (int i = 0; i < NUM_ACCOUNTS; i++) pthread_mutex_lock(&g_accounts[i].mu);

    int64_t total = 0;
    for (int i = 0; i < NUM_ACCOUNTS; i++) total += g_accounts[i].balance;

    for (int i = NUM_ACCOUNTS - 1; i >= 0; i--) pthread_mutex_unlock(&g_accounts[i].mu);
    return total;
}

/* ---------- round barrier (condvar) ---------- */

static pthread_mutex_t g_round_mu = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t  g_round_cv;
static pthread_cond_t  g_ack_cv;

static uint64_t g_round = 0;
static uint32_t g_ack_count = 0;

/* 終了要求 */
static void request_stop(void) {
    __atomic_store_n(&g_running, 0, __ATOMIC_SEQ_CST);
    pthread_mutex_lock(&g_round_mu);
    pthread_cond_broadcast(&g_round_cv);
    pthread_cond_broadcast(&g_ack_cv);
    pthread_mutex_unlock(&g_round_mu);
}

/* ---------- worker ---------- */

typedef struct {
    long tid;
    uint32_t x; /* xorshift state */
    uint64_t seen_round;
} WorkerState;

static inline uint32_t xorshift32(uint32_t *x) {
    uint32_t v = *x;
    v ^= v << 13;
    v ^= v >> 17;
    v ^= v << 5;
    *x = v;
    return v;
}

static void* worker_thread(void *arg) {
    WorkerState *st = (WorkerState*)arg;
    st->seen_round = 0;

    while (__atomic_load_n(&g_running, __ATOMIC_SEQ_CST)) {
        /* round を待つ */
        pthread_mutex_lock(&g_round_mu);
        while (__atomic_load_n(&g_running, __ATOMIC_SEQ_CST) && g_round == st->seen_round) {
            pthread_cond_wait(&g_round_cv, &g_round_mu);
        }
        if (!__atomic_load_n(&g_running, __ATOMIC_SEQ_CST)) {
            pthread_mutex_unlock(&g_round_mu);
            break;
        }
        uint64_t r = g_round;

        /* round の順序が崩れたら即 FATAL */
        if (r != st->seen_round + 1) {
            fprintf(stderr, "Thread %ld: seen=%" PRIu64 " now=%" PRIu64 "\n",
                    st->tid, st->seen_round, r);
            pthread_mutex_unlock(&g_round_mu);
            fatal("round sequence mismatch");
        }
        st->seen_round = r;
        pthread_mutex_unlock(&g_round_mu);

        /* 定期的に “ロック保持が長い” 状況を作る（thread C/R の当てどころ） */
        if (st->tid == 0 && (r % HOLD_EVERY_ROUNDS) == 0) {
            int a = 0, b = 1; /* 固定でOK（再現性） */
            lock_two(a, b);
            spin_hold_ms(HOLD_DURATION_MS);
            unlock_two(a, b);
        }

        /* 並列ワーク：送金 */
        for (int i = 0; i < TRANSFERS_PER_ROUND; i++) {
            uint32_t v1 = xorshift32(&st->x);
            uint32_t v2 = xorshift32(&st->x);
            int from = (int)(v1 % NUM_ACCOUNTS);
            int to   = (int)(v2 % NUM_ACCOUNTS);
            if (from != to) (void)transfer_once(from, to, TRANSFER_AMOUNT);
        }

        /* ack */
        pthread_mutex_lock(&g_round_mu);
        g_ack_count++;
        if (g_ack_count > (uint32_t)0x7fffffff) fatal("ack_count overflow");
        pthread_cond_signal(&g_ack_cv);
        pthread_mutex_unlock(&g_round_mu);
    }

    return NULL;
}

/* ---------- coordinator ---------- */

static void* coordinator_thread(void *arg) {
    (void)arg;

    while (__atomic_load_n(&g_running, __ATOMIC_SEQ_CST)) {
        pthread_mutex_lock(&g_round_mu);

        g_round++;
        g_ack_count = 0;

        pthread_cond_broadcast(&g_round_cv);

        /* round 完了待ち（timeout 付き） */
        struct timespec deadline;
        if (clock_gettime(CLOCK_MONOTONIC, &deadline) != 0) fatal("clock_gettime(deadline)");
        add_ms_to_timespec(&deadline, ROUND_TIMEOUT_MS);

        while (__atomic_load_n(&g_running, __ATOMIC_SEQ_CST) && g_ack_count < (uint32_t)NUM_WORKERS) {
            int rc = pthread_cond_wait(&g_ack_cv, &g_round_mu);
            if (rc == ETIMEDOUT) {
                pthread_mutex_unlock(&g_round_mu);
                fatal("round barrier timeout (threads likely stuck / condvar state broken)");
            }
            if (rc != 0) {
                pthread_mutex_unlock(&g_round_mu);
                fatal("pthread_cond_timedwait unexpected rc");
            }
        }

        pthread_mutex_unlock(&g_round_mu);

        if (!__atomic_load_n(&g_running, __ATOMIC_SEQ_CST)) break;

        /* 不変条件チェック */
        int64_t total = total_balance_locked();
        if (total != g_expected_total) {
            fprintf(stderr, "Total mismatch: got=%" PRId64 " expected=%" PRId64 " (round=%" PRIu64 ")\n",
                    total, g_expected_total, g_round);
            fatal("total balance invariant broken");
        }

        /* 目印（最小限） */
        if ((g_round % 50) == 0) {
            fprintf(stdout, "[OK] round=%" PRIu64 " total=%" PRId64 "\n", g_round, total);
            fflush(stdout);
        }
    }

    return NULL;
}

/* ---------- main ---------- */

int main(int argc, char **argv) {
    int runtime_sec = 300;
    int workers = NUM_WORKERS;

    if (argc >= 2) {
        runtime_sec = atoi(argv[1]);
        if (runtime_sec <= 0) runtime_sec = 300;
    }
    if (argc >= 3) {
        workers = atoi(argv[2]);
        if (workers <= 0) workers = NUM_WORKERS;
        if (workers > 128) workers = 128; /* 過剰生成を防ぐ */
    }

    accounts_init();

    /* condvar を CLOCK_MONOTONIC に寄せる（wall clock 変化の影響を避ける） */
    pthread_condattr_t ca;
    if (pthread_condattr_init(&ca) != 0) fatal("pthread_condattr_init");
#ifdef __linux__
    if (pthread_condattr_setclock(&ca, CLOCK_MONOTONIC) != 0) fatal("pthread_condattr_setclock");
#endif
    if (pthread_cond_init(&g_round_cv, &ca) != 0) fatal("pthread_cond_init(round_cv)");
    if (pthread_cond_init(&g_ack_cv, &ca) != 0) fatal("pthread_cond_init(ack_cv)");
    pthread_condattr_destroy(&ca);

    pthread_t coord;
    if (pthread_create(&coord, NULL, coordinator_thread, NULL) != 0) fatal("pthread_create(coordinator)");

    pthread_t *ths = (pthread_t*)calloc((size_t)workers, sizeof(pthread_t));
    WorkerState *st = (WorkerState*)calloc((size_t)workers, sizeof(WorkerState));
    if (!ths || !st) fatal("calloc");

    for (long i = 0; i < workers; i++) {
        st[i].tid = i;
        /* 決定的 seed（time不要） */
        st[i].x = (uint32_t)(0xA341316Cu ^ (uint32_t)(i * 2654435761u));
        if (pthread_create(&ths[i], NULL, worker_thread, &st[i]) != 0) fatal("pthread_create(worker)");
    }

    fprintf(stdout,
            "mt_cr_canary: runtime=%d sec workers=%d accounts=%d\n"
            "No signals/FDs/files. Focus: pthread mutex/condvar correctness under C/R.\n",
            runtime_sec, workers, NUM_ACCOUNTS);
    fflush(stdout);

    /* 指定時間動作 */
    for (int i = 0; i < runtime_sec; i++) {
        if (!__atomic_load_n(&g_running, __ATOMIC_SEQ_CST)) break;
        sleep(1);
    }
    request_stop();

    for (int i = 0; i < workers; i++) pthread_join(ths[i], NULL);
    pthread_join(coord, NULL);

    /* 最終チェック */
    int64_t total = total_balance_locked();
    if (total != g_expected_total) fatal("final total balance invariant broken");

    fprintf(stdout, "Done. final round=%" PRIu64 " total=%" PRId64 "\n", g_round, total);

    for (int i = 0; i < NUM_ACCOUNTS; i++) pthread_mutex_destroy(&g_accounts[i].mu);
    pthread_mutex_destroy(&g_round_mu);
    pthread_cond_destroy(&g_round_cv);
    pthread_cond_destroy(&g_ack_cv);

    free(ths);
    free(st);
    return 0;
}
