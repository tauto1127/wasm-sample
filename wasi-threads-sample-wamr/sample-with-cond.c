#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>

#define BUFFER_SIZE 10 // The size of our shared buffer
#define NUM_ITEMS 50   // The total number of items to produce

// Shared resources
int buffer[BUFFER_SIZE];
int count = 0; // Number of items in the buffer
int in = 0;    // Index for producer to write to
int out = 0;   // Index for consumer to read from

// Pthreads synchronization primitives
pthread_mutex_t mutex;
pthread_cond_t cond_full;  // Condition variable for when the buffer is full
pthread_cond_t cond_empty; // Condition variable for when the buffer is empty

// Producer thread function
void* producer(void* arg) {
    int item;
    for (int i = 0; i < NUM_ITEMS; i++) {
        item = i; // The item is just the loop counter

        // Lock the mutex before accessing shared resources
        pthread_mutex_lock(&mutex);

        // Wait while the buffer is full
        while (count == BUFFER_SIZE) {
            printf("Producer: Buffer is FULL. Waiting...\n");
            pthread_cond_wait(&cond_full, &mutex);
        }

        // Add the item to the buffer
        buffer[in] = item;
        in = (in + 1) % BUFFER_SIZE;
        count++;

        printf("Producer: Produced item %d, count = %d\n", item, count);

        // Signal the consumer that the buffer is no longer empty
        pthread_cond_signal(&cond_empty);

        // Unlock the mutex
        pthread_mutex_unlock(&mutex);

        // Simulate some work
        usleep(50000); // 50ms
    }
    return NULL;
}

// Consumer thread function
void* consumer(void* arg) {
    int item;
    for (int i = 0; i < NUM_ITEMS; i++) {
        // Lock the mutex before accessing shared resources
        pthread_mutex_lock(&mutex);

        // Wait while the buffer is empty
        while (count == 0) {
            printf("Consumer: Buffer is EMPTY. Waiting...\n");
            pthread_cond_wait(&cond_empty, &mutex);
        }

        // Remove an item from the buffer
        item = buffer[out];
        out = (out + 1) % BUFFER_SIZE;
        count--;

        printf("Consumer: Consumed item %d, count = %d\n", item, count);

        // Signal the producer that the buffer is no longer full
        pthread_cond_signal(&cond_full);

        // Unlock the mutex
        pthread_mutex_unlock(&mutex);

        // Simulate processing the item
        usleep(100000); // 100ms
    }
    return NULL;
}

int main() {
    pthread_t prod_thread, cons_thread;

    // Initialize mutex and condition variables
    pthread_mutex_init(&mutex, NULL);
    pthread_cond_init(&cond_full, NULL);
    pthread_cond_init(&cond_empty, NULL);

    printf("Starting producer and consumer threads...\n");

    // Create the producer and consumer threads
    if (pthread_create(&prod_thread, NULL, producer, NULL) != 0) {
        perror("Failed to create producer thread");
        return 1;
    }
    if (pthread_create(&cons_thread, NULL, consumer, NULL) != 0) {
        perror("Failed to create consumer thread");
        return 1;
    }

    // Wait for the threads to finish
    pthread_join(prod_thread, NULL);
    pthread_join(cons_thread, NULL);

    printf("Threads finished. Cleaning up.\n");

    // Destroy mutex and condition variables
    pthread_mutex_destroy(&mutex);
    pthread_cond_destroy(&cond_full);
    pthread_cond_destroy(&cond_empty);

    return 0;
}
