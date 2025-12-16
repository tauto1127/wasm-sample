;; thread_test.wat
(module
  ;; wasi-threads: thread_spawn(i32) -> i32 を import
  (import "wasi" "thread-spawn"
    (func $thread_spawn (param i32) (result i32))
  )
  (import "wasi_snapshot_preview1" "fd_write"
    (func $fd_write (param i32 i32 i32 i32) (result i32))
  )

  ;; シンプルなメモリ
  (memory (export "memory") 1 1 shared)
  
    ;; UTF-8: "こんにちは\n"
  ;; bytes: E3 81 93 E3 82 93 E3 81 AB E3 81 A1 E3 81 AF E3 81 8C E3 82 8F 0A
  ;; length = 19 bytes
  (data (i32.const 32)
    "\e3\81\93\e3\82\93\e3\81\ab\e3\81\a1\e3\81\af\e3\81\8c\e3\82\8f\0a"
  )
  
  ;; 新しいスレッドで実行されるエントリポイント
  ;; tid と start_arg が渡される
  (func (export "wasi_thread_start") (param $tid i32) (param $arg i32)
            ;; iovec struct をメモリに書く
    ;; iov_base = 32
    i32.const 0       ;; &iovec.base
    i32.const 32      ;; pointer to "こんにちは\n"
    i32.store

    ;; iov_len = 19
    i32.const 4       ;; &iovec.len
    i32.const 19
    i32.store

    ;; fd_write(fd=1, iov_ptr=0, iov_cnt=1, nwritten_ptr=8)
    i32.const 1       ;; fd = 1 (stdout)
    i32.const 0       ;; &iovec
    i32.const 1       ;; iovec count
    i32.const 8       ;; &nwritten (unused)
    call $fd_write
    drop
  )

  ;; main:
  ;;  thread_spawn(123) を呼び出し、
  ;;  返された thread id を戻り値として返す
  (func (export "main") (result i32)
    i32.const 123
    call $thread_spawn
  )
)
