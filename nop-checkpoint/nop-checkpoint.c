#include <unistd.h>
#include <pthread.h>
#include <stdio.h>

pthread_cond_t cond = PTHREAD_COND_INITIALIZER;
pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

void* worker(void* arg) {
    pthread_cond_wait(&cond, &mutex);
}

int main() {
    pthread_t thread;
    pthread_mutex_lock(&mutex);
    pthread_create(&thread, NULL, worker, NULL);
    for(int i = 0; i < 10000; i++) {
        printf("Main loop %d\n", i);
    }
    
    for(int i = 0; i < 500; i++) {
        printf("nop");
    }
    return 0;
}