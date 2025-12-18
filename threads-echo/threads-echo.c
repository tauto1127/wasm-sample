#include <pthread.h>
#include <stdbool.h>
#include <stdio.h>
#include <unistd.h>
#include <stdint.h>

static bool is_prime(uint32_t n) {
    if (n < 2) return false;
    if ((n & 1u) == 0) return n == 2;
    for (uint32_t d = 3; (uint64_t)d * d <= n; d += 2) {
        if (n % d == 0) return false;
    }
    return true;
}

uint32_t count_primes(uint32_t limit) {
    uint32_t c = 0;
    for (uint32_t i = 2; i <= limit; i++) {
        if (is_prime(i)) c++;
    }
    return c;
}

void *thread_routine(void *arg) {
  char buf[128];
  while (1) {
    printf("sleepします\n");
      sleep(1);
    int len = snprintf(buf, sizeof(buf), "echo from %lu\n",
                       (unsigned long)pthread_self());
    write(1, buf, len);
    time_t now = time(NULL);
    len = snprintf(buf, sizeof(buf), "現在の時刻（UNIX時間）: %lld\n",
                   (long long)now);
    write(1, buf, len);
  }

  return NULL;
}

void *thread_routine_not_use_wait(void *arg) {
    int count = 0;
    while (1) {
        uint32_t limit = 12000;          // ここを調整（例：80万〜200万くらい）
        uint32_t c = count_primes(limit);
        printf("primes <= %u : %u count: %d\n", limit, c, count++);
    }

    return NULL;
}
int main() {
  /* バッファを切ってロック・遅延を減らす */
  setvbuf(stdout, NULL, _IONBF, 0);

  pthread_t thread;
  pthread_t thread2;
  // pthread_create(&thread, NULL, thread_routine, NULL);
  // pthread_create(&thread2, NULL, thread_routine, NULL);
  pthread_create(&thread, NULL, thread_routine_not_use_wait, NULL);
  pthread_create(&thread2, NULL, thread_routine_not_use_wait, NULL);

  int count = 0;

  while (1) {
    sleep(1);
    const char msg[] = "echo from main\n";
    printf("count: %d\n", count++);
    write(1, msg, sizeof(msg) - 1);
  }

  return 0;
}
