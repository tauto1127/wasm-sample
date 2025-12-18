#include <pthread.h>
#include <stdio.h>
#include <stdint.h>
#include <stdatomic.h>
#include <sched.h>

static pthread_mutex_t mtx = PTHREAD_MUTEX_INITIALIZER;
static volatile int start_flag = 0;
static volatile unsigned long sink = 0;
/* Force strict alternation between threads: 1=main, 2=worker */

static void heavy_work(int rounds) {
    unsigned long acc = 0;
    for (int i = 0; i < rounds; i++) {
        unsigned long x = (unsigned long)i * 2654435761u;
        x ^= (x >> 13);
        acc += (x & 1);
    }
    sink += acc;
}

static void *worker(void *arg) {
    (void)arg;

    while (!start_flag) { /* spin */ }

    for (int i = 0; i < 50000; i++) {
        printf("worker thread before lock i=%d\\n", i); fflush(stdout);
        pthread_mutex_lock(&mtx);
        printf("thread2 lock i=%d\n", i);
        heavy_work(4000000);               // ロック中に少し重い処理
        if (i % 10000 == 0) {
            printf("thread2 done i=%d sink=%lu\n", i, sink);
            fflush(stdout);
        }
        pthread_mutex_unlock(&mtx);
        printf("thread2 unlock i=%d\n", i);

        // ロック外でも少し回す（競合のタイミングが増える）
        // heavy_work(200);
        heavy_work(50000);
    }
    return NULL;
}

int main() {
    pthread_t th;
    printf("wasmアプリ： mutexのポインタ：%p\n", (void*)&mtx);
    setvbuf(stdout, NULL, _IONBF, 0);

    pthread_create(&th, NULL, worker, NULL);

    start_flag = 1;

    for (int i = 0; i < 50000; i++) {
        printf("main before lock i=%d\\n", i); fflush(stdout);
        pthread_mutex_lock(&mtx);
        printf("thread1 lock i=%d\n", i);
        heavy_work(4000000);
        if (i % 10000 == 0) {
            printf("thread1 done i=%d sink=%lu\n", i, sink);
            fflush(stdout);
        }
        pthread_mutex_unlock(&mtx);
        printf("thread1 unlock i=%d\n", i);

        heavy_work(50000);
    }

    pthread_join(th, NULL);
    printf("finished sink=%lu\n", sink);
    return 0;
}
