// condvar_pingpong.c
#include <pthread.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <sched.h>

#define ITERS 200000
#define PRINT_EVERY 20000

static pthread_mutex_t mtx = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t  cv  = PTHREAD_COND_INITIALIZER;

/* 0: Aの番, 1: Bの番 */
static int turn = 0;
static int step = 0;

static inline void tiny_spin(void) {
    /* sleep/usleepの代わりに “Wasm命令を少し回す” ためのスピン（最適化されないようにvolatile） */
    for (volatile int i = 0; i < 200; i++) { }
}

static void *thread_a(void *arg) {
    (void)arg;
    for (int i = 0; i < ITERS; i++) {
        pthread_mutex_lock(&mtx);
        while (turn != 0) {
            pthread_cond_wait(&cv, &mtx);
        }

        step++;
        if ((i % PRINT_EVERY) == 0) {
            printf("[A] step=%d i=%d\n", step, i);
            fflush(stdout);
        }

        turn = 1;
        pthread_cond_signal(&cv);
        pthread_mutex_unlock(&mtx);

        tiny_spin();
        if ((i % 256) == 0) sched_yield();  // ブロックしない
    }
    return NULL;
}

static void *thread_b(void *arg) {
    (void)arg;
    for (int i = 0; i < ITERS; i++) {
        pthread_mutex_lock(&mtx);
        while (turn != 1) {
            pthread_cond_wait(&cv, &mtx);
        }

        /* Bは順番を戻すだけ（処理は最小） */
        turn = 0;
        pthread_cond_signal(&cv);
        pthread_mutex_unlock(&mtx);

        tiny_spin();
        if ((i % 256) == 0) sched_yield();
    }
    return NULL;
}

int main(void) {
    pthread_t a, b;

    printf("condvar ping-pong start (no sleep/usleep)\n");
    fflush(stdout);

    if (pthread_create(&a, NULL, thread_a, NULL) != 0) return 1;
    if (pthread_create(&b, NULL, thread_b, NULL) != 0) return 1;

    pthread_join(a, NULL);
    pthread_join(b, NULL);

    printf("done: step=%d\n", step);
    return 0;
}
