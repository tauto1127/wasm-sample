#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include <stdbool.h>
#include <time.h>
#include <errno.h>
#include <string.h>

#define NUM_ACCOUNTS 5
#define NUM_THREADS 8
#define INITIAL_BALANCE 1000
#define TRANSFER_AMOUNT 50
#define RUNTIME_SECONDS 300  // 5分間動作（変更可能）

pthread_t timer;

// 銀行口座構造体
typedef struct {
    int balance;
    pthread_mutex_t mutex;
    long transfer_count;  // この口座が関わった送金回数
} BankAccount;

// グローバル統計情報
typedef struct {
    long total_transfers;
    long total_errors;
    pthread_mutex_t stats_mutex;
} Statistics;

// グローバル変数
BankAccount accounts[NUM_ACCOUNTS];
Statistics stats;
volatile bool running = true;

// 口座の初期化
void init_account(BankAccount *account, int initial_balance) {
    account->balance = initial_balance;
    account->transfer_count = 0;
    pthread_mutex_init(&account->mutex, NULL);
}

// 統計情報の初期化
void init_statistics(Statistics *s) {
    s->total_transfers = 0;
    s->total_errors = 0;
    pthread_mutex_init(&s->stats_mutex, NULL);
}

// 送金処理（デッドロック回避のため、常に小さいインデックスから順にロック）
bool transfer(int from_idx, int to_idx, int amount) {
    if (from_idx == to_idx) return false;

    // デッドロック回避：常に小さいインデックスから順にロック
    int first = from_idx < to_idx ? from_idx : to_idx;
    int second = from_idx < to_idx ? to_idx : from_idx;

    pthread_mutex_lock(&accounts[first].mutex);
    pthread_mutex_lock(&accounts[second].mutex);

    bool success = false;

    // 残高チェック
    if (accounts[from_idx].balance >= amount) {
        accounts[from_idx].balance -= amount;
        // わざと処理を遅延させて、一時停止の隙を作る
        usleep(100);  // 100マイクロ秒
        accounts[to_idx].balance += amount;
        accounts[from_idx].transfer_count++;
        accounts[to_idx].transfer_count++;
        success = true;
    }

    pthread_mutex_unlock(&accounts[second].mutex);
    pthread_mutex_unlock(&accounts[first].mutex);

    return success;
}

// 全口座の総残高を計算（整合性チェック用）
long calculate_total_balance() {
    long total = 0;

    // 全口座をロック
    for (int i = 0; i < NUM_ACCOUNTS; i++) {
        pthread_mutex_lock(&accounts[i].mutex);
    }
    for (int i = 0; i < NUM_ACCOUNTS; i++) {
        total += accounts[i].balance;
    }
    // 全口座をアンロック
    for (int i = NUM_ACCOUNTS - 1; i >= 0; i--) {
        pthread_mutex_unlock(&accounts[i].mutex);
    }
    return total;
}

// 口座状態を表示
void print_account_status() {
    printf("\n========== Account Status ==========\n");
    for (int i = 0; i < NUM_ACCOUNTS; i++) {
        pthread_mutex_lock(&accounts[i].mutex);
    }
    for (int i = 0; i < NUM_ACCOUNTS; i++) {
        printf("Account %d: Balance=%5d, Transfers=%6ld\n",
               i, accounts[i].balance, accounts[i].transfer_count);
    }
    long total = 0;
    for (int i = 0; i < NUM_ACCOUNTS; i++) {
        total += accounts[i].balance;
    }
    for (int i = NUM_ACCOUNTS - 1; i >= 0; i--) {
        pthread_mutex_unlock(&accounts[i].mutex);
    }
    int expected_total = NUM_ACCOUNTS * INITIAL_BALANCE;
    printf("------------------------------------\n");
    printf("Total Balance: %ld (Expected: %d) ", total, expected_total);
    if (total == expected_total) {
        printf("✓ OK\n");
    } else {
        printf("✗ ERROR! Difference: %ld\n", total - expected_total);
        pthread_mutex_lock(&stats.stats_mutex);
        stats.total_errors++;
        pthread_mutex_unlock(&stats.stats_mutex);
    }
    pthread_mutex_lock(&stats.stats_mutex);
    printf("Total Transfers: %ld, Errors: %ld\n", stats.total_transfers, stats.total_errors);
    pthread_mutex_unlock(&stats.stats_mutex);
    printf("====================================\n");
    fflush(stdout);
}

// ワーカースレッド
void* worker_thread(void *arg) {
    long thread_id = (long)arg;
    unsigned int seed = time(NULL) + thread_id;
    long local_transfers = 0;

    printf("[Thread %ld] Started\n", thread_id);
    fflush(stdout);

    while (running) {
        // ランダムに送金元と送金先を選択
        int from = rand_r(&seed) % NUM_ACCOUNTS;
        int to = rand_r(&seed) % NUM_ACCOUNTS;
        if (from != to) {
            if (transfer(from, to, TRANSFER_AMOUNT)) {
                local_transfers++;
                // 定期的に進捗を表示
                if (local_transfers % 5000 == 0) {
                    printf("[Thread %ld] Completed %ld transfers\n", thread_id, local_transfers);
                    fflush(stdout);
                }
            }
        }
        // わざと競合を起こしやすくする（スレッド切り替えを促進）
        if (local_transfers % 10 == 0) {
            usleep(100);  // 100マイクロ秒スリープ
        }
    }
    // 統計情報を更新
    pthread_mutex_lock(&stats.stats_mutex);
    stats.total_transfers += local_transfers;
    pthread_mutex_unlock(&stats.stats_mutex);
    printf("[Thread %ld] Finished. Total transfers: %ld\n", thread_id, local_transfers);
    fflush(stdout);
    return NULL;
}

// モニタースレッド（定期的に状態を表示）
void* monitor_thread(void *arg) {
    printf("[Monitor] Started\n");
    fflush(stdout);
    while (running) {
        sleep(3);  // 3秒ごとに表示

        if (running) {
            printf("pthread_t：%lu \n", timer);
            print_account_status();
        }
    }
    printf("[Monitor] Finished\n");
    fflush(stdout);
    return NULL;
}

// タイマースレッド（指定時間後に停止）
void* timer_thread(void *arg) {

    int runtime = *(int*)arg;
    printf("[Timer] Will run for %d seconds\n", runtime);
    fflush(stdout);
    for (int i = 0; i < runtime && running; i++) {
        sleep(1);
        if (i % 30 == 0 && i > 0) {
            printf("[Timer] %d seconds elapsed...\n", i);
            fflush(stdout);
        }
    }
    printf("[Timer] Time's up! Stopping all threads...\n");
    fflush(stdout);
    running = false;
    return NULL;
}

// クリーンアップ
void cleanup() {
    for (int i = 0; i < NUM_ACCOUNTS; i++) {
        pthread_mutex_destroy(&accounts[i].mutex);
    }
    pthread_mutex_destroy(&stats.stats_mutex);
}

int main(int argc, char *argv[]) {
    pthread_t threads[NUM_THREADS];
    pthread_t monitor;
    int runtime = RUNTIME_SECONDS;

    // コマンドライン引数で実行時間を指定可能
    if (argc > 1) {
        runtime = atoi(argv[1]);
        if (runtime <= 0) {
            runtime = RUNTIME_SECONDS;
        }
    }

    printf("========================================\n");
    printf("Bank Account Simulator (Multi-threaded)\n");
    printf("========================================\n");
    printf("Accounts: %d\n", NUM_ACCOUNTS);
    printf("Threads: %d\n", NUM_THREADS);
    printf("Initial Balance per Account: %d\n", INITIAL_BALANCE);
    printf("Transfer Amount: %d\n", TRANSFER_AMOUNT);
    printf("Runtime: %d seconds\n", runtime);
    printf("========================================\n");
    fflush(stdout);

    // 初期化
    for (int i = 0; i < NUM_ACCOUNTS; i++) {
        init_account(&accounts[i], INITIAL_BALANCE);
    }
    init_statistics(&stats);

    // 初期状態を表示
    printf("\nInitial state:\n");
    print_account_status();
    printf("\nStarting simulation...\n");
    printf("You can pause/resume the process using your mechanism.\n");
    printf("Press Ctrl+C to stop early if needed.\n");
    fflush(stdout);

    // タイマースレッドを起動
    printf("Creating timer thread...\n");
    fflush(stdout);
    int ret = pthread_create(&timer, NULL, timer_thread, &runtime);
    if (ret != 0) {
        printf("ERROR: Failed to create timer thread: %s\n", strerror(ret));
        return 1;
    }
    printf("Timer thread created successfully\n");
    fflush(stdout);

    // モニタースレッドを起動
    ret = pthread_create(&monitor, NULL, monitor_thread, NULL);
    if (ret != 0) {
        printf("ERROR: Failed to create monitor thread: %s\n", strerror(ret));
        running = false;
        pthread_join(timer, NULL);
        return 1;
    }

    // ワーカースレッドを起動
    for (long i = 0; i < NUM_THREADS; i++) {
        ret = pthread_create(&threads[i], NULL, worker_thread, (void*)i);
        if (ret != 0) {
            printf("ERROR: Failed to create worker thread %ld: %s\n", i, strerror(ret));
            running = false;
            // すでに作ったスレッドの終了待ち
            for (long j = 0; j < i; j++) {
                pthread_join(threads[j], NULL);
            }
            pthread_join(monitor, NULL);
            pthread_join(timer, NULL);
            return 1;
        }
    }

    // ワーカースレッドの終了待ち
    for (int i = 0; i < NUM_THREADS; i++) {
        pthread_join(threads[i], NULL);
    }

    // モニタ・タイマスレッドの終了待ち
    pthread_join(monitor, NULL);
    pthread_join(timer, NULL);

    cleanup();

    return 0;
}
