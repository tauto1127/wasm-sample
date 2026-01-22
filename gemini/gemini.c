#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>

// 設定
#define QUEUE_SIZE 5

// 共有リソース（タスクキュー）
int task_queue[QUEUE_SIZE];
int count = 0; // 現在キューにあるタスク数
pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t cond_not_full = PTHREAD_COND_INITIALIZER;  // 空き待ち用
pthread_cond_t cond_not_empty = PTHREAD_COND_INITIALIZER; // タスク待ち用

// --- プロデューサー（タスクを作る人） ---
void* producer(void* arg) {
    long id = (long)arg;
    int task_id = 1;

    while (1) {
        pthread_mutex_lock(&mutex);

        // キューがいっぱいなら待機
        while (count == QUEUE_SIZE) {
            printf("[Producer %ld] ⚠️  キュー満杯！待機します... (Cond Wait)\n", id);
            pthread_cond_wait(&cond_not_full, &mutex);
        }

        // タスク投入
        task_queue[count] = task_id++;
        count++;
        printf("[Producer %ld] 🟢 タスク投入: [%d] (在庫: %d/%d)\n", id, task_id-1, count, QUEUE_SIZE);

        // コンシューマーに「仕事があるよ」と通知
        pthread_cond_signal(&cond_not_empty);
        
        pthread_mutex_unlock(&mutex);

        // 生成速度の調整（0.5秒〜1.5秒）
        usleep((rand() % 1000 + 500) * 1000);
    }
    return NULL;
}

// --- コンシューマー（タスクを処理する人） ---
void* consumer(void* arg) {
    long id = (long)arg;

    while (1) {
        pthread_mutex_lock(&mutex);

        // タスクがなければ待機
        while (count == 0) {
            printf("[Consumer %ld] 💤 仕事がありません... 昼寝中 (Cond Wait)\n", id);
            pthread_cond_wait(&cond_not_empty, &mutex);
        }

        // タスク取り出し
        int task = task_queue[count - 1];
        count--;
        printf("[Consumer %ld] 🛠️  タスク処理開始: [%d] (在庫: %d/%d)\n", id, task, count, QUEUE_SIZE);

        // プロデューサーに「空きができたよ」と通知
        pthread_cond_signal(&cond_not_full);

        pthread_mutex_unlock(&mutex);

        // 処理時間のシミュレーション（1秒〜2秒）
        usleep((rand() % 1000 + 1000) * 1000);
        printf("[Consumer %ld] ✅ タスク完了: [%d]\n", id, task);
    }
    return NULL;
}

int main() {
    pthread_t p1, p2, c1;

    printf("=== 永続マルチスレッド・デモ (Ctrl+C で終了) ===\n");
    printf("Producer: タスクを作る / Consumer: タスクを消費する\n\n");

    // スレッド起動
    pthread_create(&p1, NULL, producer, (void*)1);
    pthread_create(&p2, NULL, producer, (void*)2); // 2人体制でタスクを作る
    pthread_create(&c1, NULL, consumer, (void*)1); // 1人で頑張って処理する

    // 無限に待機
    pthread_join(p1, NULL);
    pthread_join(p2, NULL);
    pthread_join(c1, NULL);

    return 0;
}