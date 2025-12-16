#include <pthread.h>
#include <unistd.h>
#include <stdio.h>
int local_variable = 0;

void *thread_function(void *arg) {
    int i;

    for (int i = 0; i < 100; i++) {
        printf("Thread %lu: local_variable = %d\n", pthread_self(), local_variable);
        sleep(1);
    }

    return NULL;
}

int main() {
    int i = 0;
    
    pthread_t threads[3];

    for (i = 0; i < 3; i++) {
        pthread_create(&threads[i], NULL, thread_function, NULL);
    }

    for (int i = 0; i < 50; i++ ) {
        local_variable++;
        printf("Main thread: local_variable = %d\n", local_variable);
        sleep(1);
    }

    for (i = 0; i < 3; i++) {
        pthread_join(threads[i], NULL);
    }

    return 0;
}