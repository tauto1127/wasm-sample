#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include <stdbool.h>
#include <string.h>
#include <stdatomic.h>

// ========== 設定 ==========
#define NUM_ACCOUNTS 5
#define NUM_THREADS 8
#define INITIAL_BALANCE 1000
#define TOTAL_SYSTEM_MONEY (NUM_ACCOUNTS * INITIAL_BALANCE)
#define TRANSFER_AMOUNT 100

// ========== 画面表示用 ==========
#define CLEAR_SCREEN "\033[2J\033[H"
#define COL_RESET "\033[0m"
#define COL_GREEN "\033[32m"
#define COL_YELLOW "\033[33m"
#define COL_RED "\033[31m"
#define COL_CYAN "\033[36m"
#define COL_BLUE "\033[34m"
#define COL_MAGENTA "\033[35m"
#define COL_WHITE "\033[37m"

// ========== スピード設定 ==========
// 動作ウェイト（マイクロ秒）
#define SPEED_SLOW 800000  // 0.8秒 (ゆっくり)
#define SPEED_NORM 200000  // 0.2秒 (普通)
#define SPEED_FAST 10000   // 0.01秒 (超高速・高負荷)

// 現在の動作遅延時間（これを書き換えると全スレッドの速度が変わる）
atomic_int current_delay_us = SPEED_NORM;
char speed_label[32] = "NORMAL";

// ========== 状態定義 ==========
typedef enum { ST_RESTING, ST_WAIT_LOCK, ST_WITHDRAWING, ST_MOVING, ST_DEPOSITING, ST_SUSPENDED, ST_WOKEN } ThreadState;

typedef struct {
    int id;
    atomic_int state;
    int carrying;
    int target_acc;
} ThreadInfo;

ThreadInfo workers[NUM_THREADS];

typedef struct {
    int balance;
    pthread_mutex_t mutex;
} Account;
Account accounts[NUM_ACCOUNTS];

// 制御用
pthread_mutex_t suspend_mutex = PTHREAD_MUTEX_INITIALIZER;
pthread_cond_t suspend_cond = PTHREAD_COND_INITIALIZER;
atomic_bool suspend_flag = false;
atomic_bool running = true;
pthread_mutex_t consistency_mutex = PTHREAD_MUTEX_INITIALIZER;

// ========== ヘルパー ==========
void set_state(int tid, ThreadState s) {
    atomic_store(&workers[tid].state, s);
}

// 動的ウェイト関数 (現在のスピード設定に従って待つ)
void dynamic_sleep() {
    int delay = atomic_load(&current_delay_us);
    // ランダム性を少し加えて自然な動きにする
    usleep(delay + (rand() % (delay / 2 + 1))); 
}

void check_suspend(int tid) {
    if (atomic_load(&suspend_flag)) {
        ThreadState old = atomic_load(&workers[tid].state);
        set_state(tid, ST_SUSPENDED);
        
        pthread_mutex_lock(&suspend_mutex);
        while(atomic_load(&suspend_flag)) {
            pthread_cond_wait(&suspend_cond, &suspend_mutex);
        }
        pthread_mutex_unlock(&suspend_mutex);
        
        set_state(tid, ST_WOKEN);
        usleep(SPEED_NORM); // 起きた表示を見るためここは固定時間
        set_state(tid, old);
    }
}

// ========== ワーカースレッド ==========
void* worker_func(void* arg) {
    long tid = (long)arg;
    unsigned int seed = tid;

    while (running) {
        // 1. 休憩
        set_state(tid, ST_RESTING);
        check_suspend(tid);
        dynamic_sleep(); // ★可変スピード

        int from = rand_r(&seed) % NUM_ACCOUNTS;
        int to = rand_r(&seed) % NUM_ACCOUNTS;
        if (from == to) to = (from + 1) % NUM_ACCOUNTS;
        workers[tid].target_acc = from;

        // 2. 引き出し
        set_state(tid, ST_WAIT_LOCK);
        check_suspend(tid);
        
        pthread_mutex_lock(&accounts[from].mutex);
        set_state(tid, ST_WITHDRAWING);
        
        if (accounts[from].balance >= TRANSFER_AMOUNT) {
            pthread_mutex_lock(&consistency_mutex);
            accounts[from].balance -= TRANSFER_AMOUNT;
            workers[tid].carrying = TRANSFER_AMOUNT;
            pthread_mutex_unlock(&consistency_mutex);
        } else {
            pthread_mutex_unlock(&accounts[from].mutex);
            continue;
        }
        pthread_mutex_unlock(&accounts[from].mutex);

        // 3. 移動中
        set_state(tid, ST_MOVING);
        check_suspend(tid);
        dynamic_sleep(); // ★可変スピード

        // 4. 預け入れ
        workers[tid].target_acc = to;
        set_state(tid, ST_WAIT_LOCK);
        check_suspend(tid);
        
        pthread_mutex_lock(&accounts[to].mutex);
        set_state(tid, ST_DEPOSITING);
        
        pthread_mutex_lock(&consistency_mutex);
        accounts[to].balance += TRANSFER_AMOUNT;
        workers[tid].carrying = 0;
        pthread_mutex_unlock(&consistency_mutex);
        
        pthread_mutex_unlock(&accounts[to].mutex);
    }
    return NULL;
}

// ========== スピードコントローラー (自動変速機) ==========
void* speed_manager(void* arg) {
    while (running) {
        // Normal (5秒)
        atomic_store(&current_delay_us, SPEED_NORM);
        strcpy(speed_label, "🚗 NORMAL MODE");
        sleep(5);

        // Fast (5秒) - ロック待ちが多発する様子を見せる
        atomic_store(&current_delay_us, SPEED_FAST);
        strcpy(speed_label, "🚀 HIGH SPEED (STRESS TEST)");
        sleep(5);

        // Slow (5秒) - 動きをじっくり見せる
        atomic_store(&current_delay_us, SPEED_SLOW);
        strcpy(speed_label, "🐢 SLOW MOTION");
        sleep(5);
    }
    return NULL;
}

// ========== モニター ==========
void* monitor_func(void* arg) {
    while (running) {
        long vault_total = 0;
        long carrying_total = 0;

        pthread_mutex_lock(&consistency_mutex);
        for (int i = 0; i < NUM_ACCOUNTS; i++) vault_total += accounts[i].balance;
        for (int i = 0; i < NUM_THREADS; i++) carrying_total += workers[i].carrying;
        
        printf(CLEAR_SCREEN);
        printf("==================================================================\n");
        // スピード表示
        int delay = atomic_load(&current_delay_us);
        char *spd_col = COL_WHITE;
        if (delay == SPEED_FAST) spd_col = COL_RED;
        else if (delay == SPEED_SLOW) spd_col = COL_GREEN;
        
        printf("  CURRENT SPEED: [ %s%s%s ]  (Wait: %d ms)\n", 
               spd_col, speed_label, COL_RESET, delay/1000);
        printf("==================================================================\n\n");

        printf(" TID | STATE            | CASH FLOW     | TARGET ACC\n");
        printf("-----|------------------|---------------|-----------\n");

        for (int i = 0; i < NUM_THREADS; i++) {
            ThreadState s = atomic_load(&workers[i].state);
            int cash = workers[i].carrying;
            int target = workers[i].target_acc;

            char state_str[30];
            char *col = COL_RESET;

            switch(s) {
                case ST_RESTING:    sprintf(state_str, "💤 RESTING"); col = COL_BLUE; break;
                case ST_WAIT_LOCK:  sprintf(state_str, "🔒 BLOCKED"); col = COL_YELLOW; break;
                case ST_WITHDRAWING:sprintf(state_str, "📤 WITHDRAWING"); col = COL_GREEN; break;
                case ST_MOVING:     sprintf(state_str, "🚚 MOVING"); col = COL_CYAN; break;
                case ST_DEPOSITING: sprintf(state_str, "🏦 DEPOSITING"); col = COL_GREEN; break;
                case ST_SUSPENDED:  sprintf(state_str, "🛑 SUSPENDED"); col = COL_RED; break;
                case ST_WOKEN:      sprintf(state_str, "⚡ WOKEN UP!"); col = COL_MAGENTA; break;
            }

            char money_str[20];
            if (cash > 0) sprintf(money_str, "💰 %d", cash);
            else sprintf(money_str, " - ");

            printf("  %d  | %s%-16s%s | %-13s | Acc %d\n", 
                   i, col, state_str, COL_RESET, money_str, target);
        }

        long grand_total = vault_total + carrying_total;
        pthread_mutex_unlock(&consistency_mutex);

        printf("\n==================================================================\n");
        printf(" CHECK: Vaults(%ld) + Carrying(%ld) = %s%ld%s ", 
            vault_total, carrying_total, 
            (grand_total == TOTAL_SYSTEM_MONEY) ? COL_GREEN : COL_RED,
            grand_total, COL_RESET);

        if (grand_total == TOTAL_SYSTEM_MONEY) printf("[ ✓ OK ]\n");
        else printf("[ ✗ ERROR ]\n");
        printf("==================================================================\n");

        if (atomic_load(&suspend_flag)) {
            printf(" %s[ SUSPENDED ] System Halted.%s\n", COL_RED, COL_RESET);
        } else {
            printf(" %s[ RUNNING ]%s Observing multithreaded behavior...\n", COL_GREEN, COL_RESET);
        }

        usleep(100000); // 画面更新は常に一定（10fps）
    }
    return NULL;
}

int main() {
    pthread_t th[NUM_THREADS], mon, spd;

    for(int i=0; i<NUM_ACCOUNTS; i++) {
        accounts[i].balance = INITIAL_BALANCE;
        pthread_mutex_init(&accounts[i].mutex, NULL);
    }
    for(int i=0; i<NUM_THREADS; i++) {
        atomic_init(&workers[i].state, ST_RESTING);
        workers[i].carrying = 0;
    }

    pthread_create(&mon, NULL, monitor_func, NULL);
    // スピード管理スレッドを起動
    pthread_create(&spd, NULL, speed_manager, NULL);
    
    for(long i=0; i<NUM_THREADS; i++) {
        pthread_create(&th[i], NULL, worker_func, (void*)i);
    }

    pthread_join(mon, NULL);
    return 0;
}