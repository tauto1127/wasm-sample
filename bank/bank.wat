(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i64 i32) (result i64)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i64 i32) (result i32)))
  (type (;6;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (result i32)))
  (type (;9;) (func))
  (type (;10;) (func (param i32 i32)))
  (type (;11;) (func (param i32) (result i64)))
  (type (;12;) (func (param f64 i32) (result f64)))
  (type (;13;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i32 i32 i64) (result i32)))
  (type (;17;) (func (param i32 i32 i32 i32)))
  (type (;18;) (func (param i32 i64 i64 i64 i64 i32)))
  (type (;19;) (func (param i32 i64 i64 i64 i64)))
  (type (;20;) (func (param i32 i64 i64 i32)))
  (import "env" "memory" (memory (;0;) 2 1024 shared))
  (import "wasi_snapshot_preview1" "args_get" (func $__imported_wasi_snapshot_preview1_args_get (type 4)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func $__imported_wasi_snapshot_preview1_args_sizes_get (type 4)))
  (import "wasi_snapshot_preview1" "clock_time_get" (func $__imported_wasi_snapshot_preview1_clock_time_get (type 5)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__imported_wasi_snapshot_preview1_fd_close (type 2)))
  (import "wasi_snapshot_preview1" "fd_fdstat_get" (func $__imported_wasi_snapshot_preview1_fd_fdstat_get (type 4)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__imported_wasi_snapshot_preview1_fd_seek (type 6)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__imported_wasi_snapshot_preview1_fd_write (type 7)))
  (import "wasi_snapshot_preview1" "poll_oneoff" (func $__imported_wasi_snapshot_preview1_poll_oneoff (type 7)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (type 3)))
  (import "wasi_snapshot_preview1" "sched_yield" (func $__imported_wasi_snapshot_preview1_sched_yield (type 8)))
  (import "wasi" "thread-spawn" (func $__imported_wasi_thread_spawn (type 2)))
  (func $__wasm_call_ctors (type 9))
  (func $__wasm_init_tls (type 3) (param i32)
    local.get 0
    global.set $__tls_base
    local.get 0
    i32.const 0
    i32.const 112
    memory.init $.tdata)
  (func $__wasm_init_memory (type 9)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 7056
          i32.const 0
          i32.const 1
          i32.atomic.rmw.cmpxchg
          br_table 0 (;@3;) 1 (;@2;) 2 (;@1;)
        end
        i32.const 1024
        i32.const 1024
        global.set $__tls_base
        i32.const 0
        i32.const 112
        memory.init $.tdata
        i32.const 1136
        i32.const 0
        i32.const 3792
        memory.init $.rodata
        i32.const 4928
        i32.const 0
        i32.const 280
        memory.init $.data
        i32.const 5216
        i32.const 0
        i32.const 1840
        memory.fill
        i32.const 7056
        i32.const 2
        i32.atomic.store
        i32.const 7056
        i32.const -1
        memory.atomic.notify
        drop
        br 1 (;@1;)
      end
      i32.const 7056
      i32.const 1
      i64.const -1
      memory.atomic.wait32
      drop
    end
    data.drop $.rodata
    data.drop $.data)
  (func $_start (type 9)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        global.get $GOT.data.internal.__memory_base
        i32.const 5216
        i32.add
        i32.const 0
        i32.const 1
        i32.atomic.rmw.cmpxchg
        br_if 0 (;@2;)
        call $__wasi_init_tp
        call $__wasm_call_ctors
        call $__main_void
        local.set 0
        call $__wasm_call_dtors
        local.get 0
        br_if 1 (;@1;)
        return
      end
      unreachable
      unreachable
    end
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $init_account (type 10) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    local.get 4
    i32.load offset=8
    local.set 5
    local.get 4
    i32.load offset=12
    local.set 6
    local.get 6
    local.get 5
    i32.store
    local.get 4
    i32.load offset=12
    local.set 7
    i32.const 0
    local.set 8
    local.get 7
    local.get 8
    i32.store offset=28
    local.get 4
    i32.load offset=12
    local.set 9
    i32.const 4
    local.set 10
    local.get 9
    local.get 10
    i32.add
    local.set 11
    i32.const 0
    local.set 12
    local.get 11
    local.get 12
    call $pthread_mutex_init
    drop
    i32.const 16
    local.set 13
    local.get 4
    local.get 13
    i32.add
    local.set 14
    local.get 14
    global.set $__stack_pointer
    return)
  (func $init_statistics (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store
    local.get 3
    i32.load offset=12
    local.set 6
    i32.const 0
    local.set 7
    local.get 6
    local.get 7
    i32.store offset=4
    local.get 3
    i32.load offset=12
    local.set 8
    i32.const 8
    local.set 9
    local.get 8
    local.get 9
    i32.add
    local.set 10
    i32.const 0
    local.set 11
    local.get 10
    local.get 11
    call $pthread_mutex_init
    drop
    i32.const 16
    local.set 12
    local.get 3
    local.get 12
    i32.add
    local.set 13
    local.get 13
    global.set $__stack_pointer
    return)
  (func $transfer (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 64
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=56
    local.get 5
    local.get 1
    i32.store offset=52
    local.get 5
    local.get 2
    i32.store offset=48
    local.get 5
    i32.load offset=56
    local.set 6
    local.get 5
    i32.load offset=52
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.set 9
    local.get 8
    local.get 9
    i32.eq
    local.set 10
    i32.const 1
    local.set 11
    local.get 10
    local.get 11
    i32.and
    local.set 12
    block  ;; label = @1
      block  ;; label = @2
        local.get 12
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 13
        i32.const 1
        local.set 14
        local.get 13
        local.get 14
        i32.and
        local.set 15
        local.get 5
        local.get 15
        i32.store8 offset=63
        br 1 (;@1;)
      end
      local.get 5
      i32.load offset=56
      local.set 16
      local.get 5
      i32.load offset=52
      local.set 17
      local.get 16
      local.set 18
      local.get 17
      local.set 19
      local.get 18
      local.get 19
      i32.lt_s
      local.set 20
      i32.const 1
      local.set 21
      local.get 20
      local.get 21
      i32.and
      local.set 22
      block  ;; label = @2
        block  ;; label = @3
          local.get 22
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load offset=56
          local.set 23
          local.get 23
          local.set 24
          br 1 (;@2;)
        end
        local.get 5
        i32.load offset=52
        local.set 25
        local.get 25
        local.set 24
      end
      local.get 24
      local.set 26
      local.get 5
      local.get 26
      i32.store offset=44
      local.get 5
      i32.load offset=56
      local.set 27
      local.get 5
      i32.load offset=52
      local.set 28
      local.get 27
      local.set 29
      local.get 28
      local.set 30
      local.get 29
      local.get 30
      i32.lt_s
      local.set 31
      i32.const 1
      local.set 32
      local.get 31
      local.get 32
      i32.and
      local.set 33
      block  ;; label = @2
        block  ;; label = @3
          local.get 33
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          i32.load offset=52
          local.set 34
          local.get 34
          local.set 35
          br 1 (;@2;)
        end
        local.get 5
        i32.load offset=56
        local.set 36
        local.get 36
        local.set 35
      end
      local.get 35
      local.set 37
      local.get 5
      local.get 37
      i32.store offset=40
      local.get 5
      i32.load offset=44
      local.set 38
      i32.const 5232
      local.set 39
      i32.const 5
      local.set 40
      local.get 38
      local.get 40
      i32.shl
      local.set 41
      local.get 39
      local.get 41
      i32.add
      local.set 42
      i32.const 4
      local.set 43
      local.get 42
      local.get 43
      i32.add
      local.set 44
      local.get 44
      call $__pthread_mutex_lock
      drop
      local.get 5
      i32.load offset=40
      local.set 45
      i32.const 5232
      local.set 46
      i32.const 5
      local.set 47
      local.get 45
      local.get 47
      i32.shl
      local.set 48
      local.get 46
      local.get 48
      i32.add
      local.set 49
      i32.const 4
      local.set 50
      local.get 49
      local.get 50
      i32.add
      local.set 51
      local.get 51
      call $__pthread_mutex_lock
      drop
      i32.const 0
      local.set 52
      local.get 5
      local.get 52
      i32.store8 offset=39
      local.get 5
      i32.load offset=56
      local.set 53
      i32.const 5232
      local.set 54
      i32.const 5
      local.set 55
      local.get 53
      local.get 55
      i32.shl
      local.set 56
      local.get 54
      local.get 56
      i32.add
      local.set 57
      local.get 57
      i32.load
      local.set 58
      local.get 5
      i32.load offset=48
      local.set 59
      local.get 58
      local.set 60
      local.get 59
      local.set 61
      local.get 60
      local.get 61
      i32.ge_s
      local.set 62
      i32.const 1
      local.set 63
      local.get 62
      local.get 63
      i32.and
      local.set 64
      block  ;; label = @2
        local.get 64
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.load offset=48
        local.set 65
        local.get 5
        i32.load offset=56
        local.set 66
        i32.const 5232
        local.set 67
        i32.const 5
        local.set 68
        local.get 66
        local.get 68
        i32.shl
        local.set 69
        local.get 67
        local.get 69
        i32.add
        local.set 70
        local.get 70
        i32.load
        local.set 71
        local.get 71
        local.get 65
        i32.sub
        local.set 72
        local.get 70
        local.get 72
        i32.store
        i32.const 100
        local.set 73
        local.get 73
        call $usleep
        drop
        local.get 5
        i32.load offset=48
        local.set 74
        local.get 5
        i32.load offset=52
        local.set 75
        i32.const 5232
        local.set 76
        i32.const 5
        local.set 77
        local.get 75
        local.get 77
        i32.shl
        local.set 78
        local.get 76
        local.get 78
        i32.add
        local.set 79
        local.get 79
        i32.load
        local.set 80
        local.get 80
        local.get 74
        i32.add
        local.set 81
        local.get 79
        local.get 81
        i32.store
        local.get 5
        i32.load offset=56
        local.set 82
        i32.const 5232
        local.set 83
        i32.const 5
        local.set 84
        local.get 82
        local.get 84
        i32.shl
        local.set 85
        local.get 83
        local.get 85
        i32.add
        local.set 86
        local.get 86
        i32.load offset=28
        local.set 87
        i32.const 1
        local.set 88
        local.get 87
        local.get 88
        i32.add
        local.set 89
        local.get 86
        local.get 89
        i32.store offset=28
        local.get 5
        i32.load offset=52
        local.set 90
        i32.const 5232
        local.set 91
        i32.const 5
        local.set 92
        local.get 90
        local.get 92
        i32.shl
        local.set 93
        local.get 91
        local.get 93
        i32.add
        local.set 94
        local.get 94
        i32.load offset=28
        local.set 95
        i32.const 1
        local.set 96
        local.get 95
        local.get 96
        i32.add
        local.set 97
        local.get 94
        local.get 97
        i32.store offset=28
        i32.const 1
        local.set 98
        local.get 5
        local.get 98
        i32.store8 offset=39
      end
      local.get 5
      i32.load offset=40
      local.set 99
      i32.const 5232
      local.set 100
      i32.const 5
      local.set 101
      local.get 99
      local.get 101
      i32.shl
      local.set 102
      local.get 100
      local.get 102
      i32.add
      local.set 103
      i32.const 4
      local.set 104
      local.get 103
      local.get 104
      i32.add
      local.set 105
      local.get 105
      call $__pthread_mutex_unlock
      local.set 106
      local.get 5
      local.get 106
      i32.store offset=32
      local.get 5
      i32.load offset=32
      local.set 107
      block  ;; label = @2
        local.get 107
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 108
        local.get 108
        i32.load offset=4428
        local.set 109
        local.get 5
        i32.load offset=40
        local.set 110
        local.get 5
        i32.load offset=32
        local.set 111
        local.get 5
        i32.load offset=32
        local.set 112
        local.get 112
        call $strerror
        local.set 113
        local.get 5
        local.get 113
        i32.store offset=24
        local.get 5
        local.get 111
        i32.store offset=20
        local.get 5
        local.get 110
        i32.store offset=16
        i32.const 1802
        local.set 114
        i32.const 16
        local.set 115
        local.get 5
        local.get 115
        i32.add
        local.set 116
        local.get 109
        local.get 114
        local.get 116
        call $fprintf
        drop
      end
      local.get 5
      i32.load offset=44
      local.set 117
      i32.const 5232
      local.set 118
      i32.const 5
      local.set 119
      local.get 117
      local.get 119
      i32.shl
      local.set 120
      local.get 118
      local.get 120
      i32.add
      local.set 121
      i32.const 4
      local.set 122
      local.get 121
      local.get 122
      i32.add
      local.set 123
      local.get 123
      call $__pthread_mutex_unlock
      local.set 124
      local.get 5
      local.get 124
      i32.store offset=28
      local.get 5
      i32.load offset=28
      local.set 125
      block  ;; label = @2
        local.get 125
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 126
        local.get 126
        i32.load offset=4428
        local.set 127
        local.get 5
        i32.load offset=44
        local.set 128
        local.get 5
        i32.load offset=28
        local.set 129
        local.get 5
        i32.load offset=28
        local.set 130
        local.get 130
        call $strerror
        local.set 131
        local.get 5
        local.get 131
        i32.store offset=8
        local.get 5
        local.get 129
        i32.store offset=4
        local.get 5
        local.get 128
        i32.store
        i32.const 1738
        local.set 132
        local.get 127
        local.get 132
        local.get 5
        call $fprintf
        drop
      end
      local.get 5
      i32.load8_u offset=39
      local.set 133
      i32.const 1
      local.set 134
      local.get 133
      local.get 134
      i32.and
      local.set 135
      local.get 5
      local.get 135
      i32.store8 offset=63
    end
    local.get 5
    i32.load8_u offset=63
    local.set 136
    i32.const 1
    local.set 137
    local.get 136
    local.get 137
    i32.and
    local.set 138
    i32.const 64
    local.set 139
    local.get 5
    local.get 139
    i32.add
    local.set 140
    local.get 140
    global.set $__stack_pointer
    local.get 138
    return)
  (func $print_account_status (type 9)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 80
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 2208
    local.set 3
    i32.const 0
    local.set 4
    local.get 3
    local.get 4
    call $printf
    drop
    i32.const 0
    local.set 5
    local.get 2
    local.get 5
    i32.store offset=76
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=76
        local.set 6
        i32.const 5
        local.set 7
        local.get 6
        local.set 8
        local.get 7
        local.set 9
        local.get 8
        local.get 9
        i32.lt_s
        local.set 10
        i32.const 1
        local.set 11
        local.get 10
        local.get 11
        i32.and
        local.set 12
        local.get 12
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=76
        local.set 13
        i32.const 5232
        local.set 14
        i32.const 5
        local.set 15
        local.get 13
        local.get 15
        i32.shl
        local.set 16
        local.get 14
        local.get 16
        i32.add
        local.set 17
        i32.const 4
        local.set 18
        local.get 17
        local.get 18
        i32.add
        local.set 19
        local.get 19
        call $__pthread_mutex_lock
        drop
        local.get 2
        i32.load offset=76
        local.set 20
        i32.const 1
        local.set 21
        local.get 20
        local.get 21
        i32.add
        local.set 22
        local.get 2
        local.get 22
        i32.store offset=76
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 23
    local.get 2
    local.get 23
    i32.store offset=72
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=72
        local.set 24
        i32.const 5
        local.set 25
        local.get 24
        local.set 26
        local.get 25
        local.set 27
        local.get 26
        local.get 27
        i32.lt_s
        local.set 28
        i32.const 1
        local.set 29
        local.get 28
        local.get 29
        i32.and
        local.set 30
        local.get 30
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=72
        local.set 31
        local.get 2
        i32.load offset=72
        local.set 32
        i32.const 5232
        local.set 33
        i32.const 5
        local.set 34
        local.get 32
        local.get 34
        i32.shl
        local.set 35
        local.get 33
        local.get 35
        i32.add
        local.set 36
        local.get 36
        i32.load
        local.set 37
        local.get 2
        i32.load offset=72
        local.set 38
        i32.const 5232
        local.set 39
        i32.const 5
        local.set 40
        local.get 38
        local.get 40
        i32.shl
        local.set 41
        local.get 39
        local.get 41
        i32.add
        local.set 42
        local.get 42
        i32.load offset=28
        local.set 43
        local.get 2
        local.get 43
        i32.store offset=8
        local.get 2
        local.get 37
        i32.store offset=4
        local.get 2
        local.get 31
        i32.store
        i32.const 1867
        local.set 44
        local.get 44
        local.get 2
        call $printf
        drop
        local.get 2
        i32.load offset=72
        local.set 45
        i32.const 1
        local.set 46
        local.get 45
        local.get 46
        i32.add
        local.set 47
        local.get 2
        local.get 47
        i32.store offset=72
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 48
    local.get 2
    local.get 48
    i32.store offset=68
    i32.const 0
    local.set 49
    local.get 2
    local.get 49
    i32.store offset=64
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=64
        local.set 50
        i32.const 5
        local.set 51
        local.get 50
        local.set 52
        local.get 51
        local.set 53
        local.get 52
        local.get 53
        i32.lt_s
        local.set 54
        i32.const 1
        local.set 55
        local.get 54
        local.get 55
        i32.and
        local.set 56
        local.get 56
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=64
        local.set 57
        i32.const 5232
        local.set 58
        i32.const 5
        local.set 59
        local.get 57
        local.get 59
        i32.shl
        local.set 60
        local.get 58
        local.get 60
        i32.add
        local.set 61
        local.get 61
        i32.load
        local.set 62
        local.get 2
        i32.load offset=68
        local.set 63
        local.get 63
        local.get 62
        i32.add
        local.set 64
        local.get 2
        local.get 64
        i32.store offset=68
        local.get 2
        i32.load offset=64
        local.set 65
        i32.const 1
        local.set 66
        local.get 65
        local.get 66
        i32.add
        local.set 67
        local.get 2
        local.get 67
        i32.store offset=64
        br 0 (;@2;)
      end
    end
    i32.const 4
    local.set 68
    local.get 2
    local.get 68
    i32.store offset=60
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=60
        local.set 69
        i32.const 0
        local.set 70
        local.get 69
        local.set 71
        local.get 70
        local.set 72
        local.get 71
        local.get 72
        i32.ge_s
        local.set 73
        i32.const 1
        local.set 74
        local.get 73
        local.get 74
        i32.and
        local.set 75
        local.get 75
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=60
        local.set 76
        i32.const 5232
        local.set 77
        i32.const 5
        local.set 78
        local.get 76
        local.get 78
        i32.shl
        local.set 79
        local.get 77
        local.get 79
        i32.add
        local.set 80
        i32.const 4
        local.set 81
        local.get 80
        local.get 81
        i32.add
        local.set 82
        local.get 82
        call $__pthread_mutex_unlock
        drop
        local.get 2
        i32.load offset=60
        local.set 83
        i32.const -1
        local.set 84
        local.get 83
        local.get 84
        i32.add
        local.set 85
        local.get 2
        local.get 85
        i32.store offset=60
        br 0 (;@2;)
      end
    end
    i32.const 5000
    local.set 86
    local.get 2
    local.get 86
    i32.store offset=56
    i32.const 2616
    local.set 87
    i32.const 0
    local.set 88
    local.get 87
    local.get 88
    call $printf
    drop
    local.get 2
    i32.load offset=68
    local.set 89
    local.get 2
    i32.load offset=56
    local.set 90
    local.get 2
    local.get 90
    i32.store offset=52
    local.get 2
    local.get 89
    i32.store offset=48
    i32.const 1387
    local.set 91
    i32.const 48
    local.set 92
    local.get 2
    local.get 92
    i32.add
    local.set 93
    local.get 91
    local.get 93
    call $printf
    drop
    local.get 2
    i32.load offset=68
    local.set 94
    local.get 2
    i32.load offset=56
    local.set 95
    local.get 94
    local.set 96
    local.get 95
    local.set 97
    local.get 96
    local.get 97
    i32.eq
    local.set 98
    i32.const 1
    local.set 99
    local.get 98
    local.get 99
    i32.and
    local.set 100
    block  ;; label = @1
      block  ;; label = @2
        local.get 100
        i32.eqz
        br_if 0 (;@2;)
        i32.const 2158
        local.set 101
        i32.const 0
        local.set 102
        local.get 101
        local.get 102
        call $printf
        drop
        br 1 (;@1;)
      end
      local.get 2
      i32.load offset=68
      local.set 103
      local.get 2
      i32.load offset=56
      local.set 104
      local.get 103
      local.get 104
      i32.sub
      local.set 105
      local.get 2
      local.get 105
      i32.store offset=32
      i32.const 1988
      local.set 106
      i32.const 32
      local.set 107
      local.get 2
      local.get 107
      i32.add
      local.set 108
      local.get 106
      local.get 108
      call $printf
      drop
      i32.const 5392
      local.set 109
      i32.const 8
      local.set 110
      local.get 109
      local.get 110
      i32.add
      local.set 111
      local.get 111
      call $__pthread_mutex_lock
      drop
      i32.const 0
      local.set 112
      local.get 112
      i32.load offset=5396
      local.set 113
      i32.const 1
      local.set 114
      local.get 113
      local.get 114
      i32.add
      local.set 115
      i32.const 0
      local.set 116
      local.get 116
      local.get 115
      i32.store offset=5396
      i32.const 5392
      local.set 117
      i32.const 8
      local.set 118
      local.get 117
      local.get 118
      i32.add
      local.set 119
      local.get 119
      call $__pthread_mutex_unlock
      drop
    end
    i32.const 5392
    local.set 120
    i32.const 8
    local.set 121
    local.get 120
    local.get 121
    i32.add
    local.set 122
    local.get 122
    call $__pthread_mutex_lock
    drop
    i32.const 0
    local.set 123
    local.get 123
    i32.load offset=5392
    local.set 124
    i32.const 0
    local.set 125
    local.get 125
    i32.load offset=5396
    local.set 126
    local.get 2
    local.get 126
    i32.store offset=20
    local.get 2
    local.get 124
    i32.store offset=16
    i32.const 1908
    local.set 127
    i32.const 16
    local.set 128
    local.get 2
    local.get 128
    i32.add
    local.set 129
    local.get 127
    local.get 129
    call $printf
    drop
    i32.const 5392
    local.set 130
    i32.const 8
    local.set 131
    local.get 130
    local.get 131
    i32.add
    local.set 132
    local.get 132
    call $__pthread_mutex_unlock
    drop
    i32.const 2170
    local.set 133
    i32.const 0
    local.set 134
    local.get 133
    local.get 134
    call $printf
    drop
    i32.const 0
    local.set 135
    local.get 135
    i32.load offset=4432
    local.set 136
    local.get 136
    call $fflush
    drop
    i32.const 80
    local.set 137
    local.get 2
    local.get 137
    i32.add
    local.set 138
    local.get 138
    global.set $__stack_pointer
    return)
  (func $worker_thread (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i64 i32 i32 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 64
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=60
    local.get 3
    i32.load offset=60
    local.set 4
    local.get 3
    local.get 4
    i32.store offset=56
    i32.const 0
    local.set 5
    local.get 5
    call $time
    local.set 6
    local.get 3
    i32.load offset=56
    local.set 7
    local.get 7
    local.set 8
    local.get 8
    i64.extend_i32_s
    local.set 9
    local.get 6
    local.get 9
    i64.add
    local.set 10
    local.get 10
    i32.wrap_i64
    local.set 11
    local.get 3
    local.get 11
    i32.store offset=52
    i32.const 0
    local.set 12
    local.get 3
    local.get 12
    i32.store offset=48
    local.get 3
    i32.load offset=56
    local.set 13
    local.get 3
    local.get 13
    i32.store offset=32
    i32.const 2035
    local.set 14
    i32.const 32
    local.set 15
    local.get 3
    local.get 15
    i32.add
    local.set 16
    local.get 14
    local.get 16
    call $printf
    drop
    i32.const 0
    local.set 17
    local.get 17
    i32.load offset=4432
    local.set 18
    local.get 18
    call $fflush
    drop
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 19
        local.get 19
        i32.load8_u offset=4928
        local.set 20
        i32.const 1
        local.set 21
        local.get 20
        local.get 21
        i32.and
        local.set 22
        local.get 22
        i32.eqz
        br_if 1 (;@1;)
        i32.const 52
        local.set 23
        local.get 3
        local.get 23
        i32.add
        local.set 24
        local.get 24
        local.set 25
        local.get 25
        call $rand_r
        local.set 26
        i32.const 5
        local.set 27
        local.get 26
        local.get 27
        i32.rem_s
        local.set 28
        local.get 3
        local.get 28
        i32.store offset=44
        i32.const 52
        local.set 29
        local.get 3
        local.get 29
        i32.add
        local.set 30
        local.get 30
        local.set 31
        local.get 31
        call $rand_r
        local.set 32
        i32.const 5
        local.set 33
        local.get 32
        local.get 33
        i32.rem_s
        local.set 34
        local.get 3
        local.get 34
        i32.store offset=40
        local.get 3
        i32.load offset=44
        local.set 35
        local.get 3
        i32.load offset=40
        local.set 36
        local.get 35
        local.set 37
        local.get 36
        local.set 38
        local.get 37
        local.get 38
        i32.ne
        local.set 39
        i32.const 1
        local.set 40
        local.get 39
        local.get 40
        i32.and
        local.set 41
        block  ;; label = @3
          local.get 41
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=44
          local.set 42
          local.get 3
          i32.load offset=40
          local.set 43
          i32.const 50
          local.set 44
          local.get 42
          local.get 43
          local.get 44
          call $transfer
          local.set 45
          i32.const 1
          local.set 46
          local.get 45
          local.get 46
          i32.and
          local.set 47
          block  ;; label = @4
            local.get 47
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=48
            local.set 48
            i32.const 1
            local.set 49
            local.get 48
            local.get 49
            i32.add
            local.set 50
            local.get 3
            local.get 50
            i32.store offset=48
            local.get 3
            i32.load offset=48
            local.set 51
            i32.const 5000
            local.set 52
            local.get 51
            local.get 52
            i32.rem_s
            local.set 53
            block  ;; label = @5
              local.get 53
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=56
              local.set 54
              local.get 3
              i32.load offset=48
              local.set 55
              local.get 3
              local.get 55
              i32.store offset=4
              local.get 3
              local.get 54
              i32.store
              i32.const 1513
              local.set 56
              local.get 56
              local.get 3
              call $printf
              drop
              i32.const 0
              local.set 57
              local.get 57
              i32.load offset=4432
              local.set 58
              local.get 58
              call $fflush
              drop
            end
          end
        end
        local.get 3
        i32.load offset=48
        local.set 59
        i32.const 10
        local.set 60
        local.get 59
        local.get 60
        i32.rem_s
        local.set 61
        block  ;; label = @3
          local.get 61
          br_if 0 (;@3;)
          i32.const 100
          local.set 62
          local.get 62
          call $usleep
          drop
        end
        br 0 (;@2;)
      end
    end
    i32.const 5392
    local.set 63
    i32.const 8
    local.set 64
    local.get 63
    local.get 64
    i32.add
    local.set 65
    local.get 65
    call $__pthread_mutex_lock
    drop
    local.get 3
    i32.load offset=48
    local.set 66
    i32.const 0
    local.set 67
    local.get 67
    i32.load offset=5392
    local.set 68
    local.get 68
    local.get 66
    i32.add
    local.set 69
    i32.const 0
    local.set 70
    local.get 70
    local.get 69
    i32.store offset=5392
    i32.const 5392
    local.set 71
    i32.const 8
    local.set 72
    local.get 71
    local.get 72
    i32.add
    local.set 73
    local.get 73
    call $__pthread_mutex_unlock
    drop
    local.get 3
    i32.load offset=56
    local.set 74
    local.get 3
    i32.load offset=48
    local.set 75
    local.get 3
    local.get 75
    i32.store offset=20
    local.get 3
    local.get 74
    i32.store offset=16
    i32.const 1943
    local.set 76
    i32.const 16
    local.set 77
    local.get 3
    local.get 77
    i32.add
    local.set 78
    local.get 76
    local.get 78
    call $printf
    drop
    i32.const 0
    local.set 79
    local.get 79
    i32.load offset=4432
    local.set 80
    local.get 80
    call $fflush
    drop
    i32.const 0
    local.set 81
    i32.const 64
    local.set 82
    local.get 3
    local.get 82
    i32.add
    local.set 83
    local.get 83
    global.set $__stack_pointer
    local.get 81
    return)
  (func $monitor_thread (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    i32.const 2016
    local.set 4
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    call $printf
    drop
    i32.const 0
    local.set 6
    local.get 6
    i32.load offset=4432
    local.set 7
    local.get 7
    call $fflush
    drop
    block  ;; label = @1
      loop  ;; label = @2
        i32.const 0
        local.set 8
        local.get 8
        i32.load8_u offset=4928
        local.set 9
        i32.const 1
        local.set 10
        local.get 9
        local.get 10
        i32.and
        local.set 11
        local.get 11
        i32.eqz
        br_if 1 (;@1;)
        i32.const 3
        local.set 12
        local.get 12
        call $sleep
        drop
        i32.const 0
        local.set 13
        local.get 13
        i32.load8_u offset=4928
        local.set 14
        i32.const 1
        local.set 15
        local.get 14
        local.get 15
        i32.and
        local.set 16
        block  ;; label = @3
          local.get 16
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 17
          local.get 17
          i32.load offset=5424
          local.set 18
          local.get 3
          local.get 18
          i32.store
          i32.const 2695
          local.set 19
          local.get 19
          local.get 3
          call $printf
          drop
          call $print_account_status
        end
        br 0 (;@2;)
      end
    end
    i32.const 2057
    local.set 20
    i32.const 0
    local.set 21
    local.get 20
    local.get 21
    call $printf
    drop
    i32.const 0
    local.set 22
    local.get 22
    i32.load offset=4432
    local.set 23
    local.get 23
    call $fflush
    drop
    i32.const 0
    local.set 24
    i32.const 16
    local.set 25
    local.get 3
    local.get 25
    i32.add
    local.set 26
    local.get 26
    global.set $__stack_pointer
    local.get 24
    return)
  (func $timer_thread (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 32
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=28
    local.get 3
    i32.load offset=28
    local.set 4
    local.get 4
    i32.load
    local.set 5
    local.get 3
    local.get 5
    i32.store offset=24
    local.get 3
    i32.load offset=24
    local.set 6
    local.get 3
    local.get 6
    i32.store offset=16
    i32.const 1551
    local.set 7
    i32.const 16
    local.set 8
    local.get 3
    local.get 8
    i32.add
    local.set 9
    local.get 7
    local.get 9
    call $printf
    drop
    i32.const 0
    local.set 10
    local.get 10
    i32.load offset=4432
    local.set 11
    local.get 11
    call $fflush
    drop
    i32.const 0
    local.set 12
    local.get 3
    local.get 12
    i32.store offset=20
    loop  ;; label = @1
      local.get 3
      i32.load offset=20
      local.set 13
      local.get 3
      i32.load offset=24
      local.set 14
      local.get 13
      local.set 15
      local.get 14
      local.set 16
      local.get 15
      local.get 16
      i32.lt_s
      local.set 17
      i32.const 0
      local.set 18
      i32.const 1
      local.set 19
      local.get 17
      local.get 19
      i32.and
      local.set 20
      local.get 18
      local.set 21
      block  ;; label = @2
        local.get 20
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 22
        local.get 22
        i32.load8_u offset=4928
        local.set 23
        local.get 23
        local.set 21
      end
      local.get 21
      local.set 24
      i32.const 1
      local.set 25
      local.get 24
      local.get 25
      i32.and
      local.set 26
      block  ;; label = @2
        local.get 26
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 27
        local.get 27
        call $sleep
        drop
        local.get 3
        i32.load offset=20
        local.set 28
        i32.const 30
        local.set 29
        local.get 28
        local.get 29
        i32.rem_s
        local.set 30
        block  ;; label = @3
          local.get 30
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=20
          local.set 31
          i32.const 0
          local.set 32
          local.get 31
          local.set 33
          local.get 32
          local.set 34
          local.get 33
          local.get 34
          i32.gt_s
          local.set 35
          i32.const 1
          local.set 36
          local.get 35
          local.get 36
          i32.and
          local.set 37
          local.get 37
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=20
          local.set 38
          local.get 3
          local.get 38
          i32.store
          i32.const 2559
          local.set 39
          local.get 39
          local.get 3
          call $printf
          drop
          i32.const 0
          local.set 40
          local.get 40
          i32.load offset=4432
          local.set 41
          local.get 41
          call $fflush
          drop
        end
        local.get 3
        i32.load offset=20
        local.set 42
        i32.const 1
        local.set 43
        local.get 42
        local.get 43
        i32.add
        local.set 44
        local.get 3
        local.get 44
        i32.store offset=20
        br 1 (;@1;)
      end
    end
    i32.const 2490
    local.set 45
    i32.const 0
    local.set 46
    local.get 45
    local.get 46
    call $printf
    drop
    i32.const 0
    local.set 47
    local.get 47
    i32.load offset=4432
    local.set 48
    local.get 48
    call $fflush
    drop
    i32.const 0
    local.set 49
    i32.const 0
    local.set 50
    local.get 50
    local.get 49
    i32.store8 offset=4928
    i32.const 0
    local.set 51
    i32.const 32
    local.set 52
    local.get 3
    local.get 52
    i32.add
    local.set 53
    local.get 53
    global.set $__stack_pointer
    local.get 51
    return)
  (func $cleanup (type 9)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=12
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=12
        local.set 4
        i32.const 5
        local.set 5
        local.get 4
        local.set 6
        local.get 5
        local.set 7
        local.get 6
        local.get 7
        i32.lt_s
        local.set 8
        i32.const 1
        local.set 9
        local.get 8
        local.get 9
        i32.and
        local.set 10
        local.get 10
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=12
        local.set 11
        i32.const 5232
        local.set 12
        i32.const 5
        local.set 13
        local.get 11
        local.get 13
        i32.shl
        local.set 14
        local.get 12
        local.get 14
        i32.add
        local.set 15
        i32.const 4
        local.set 16
        local.get 15
        local.get 16
        i32.add
        local.set 17
        local.get 17
        call $pthread_mutex_destroy
        drop
        local.get 2
        i32.load offset=12
        local.set 18
        i32.const 1
        local.set 19
        local.get 18
        local.get 19
        i32.add
        local.set 20
        local.get 2
        local.get 20
        i32.store offset=12
        br 0 (;@2;)
      end
    end
    i32.const 5392
    local.set 21
    i32.const 8
    local.set 22
    local.get 21
    local.get 22
    i32.add
    local.set 23
    local.get 23
    call $pthread_mutex_destroy
    drop
    i32.const 16
    local.set 24
    local.get 2
    local.get 24
    i32.add
    local.set 25
    local.get 25
    global.set $__stack_pointer
    return)
  (func $main (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 192
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    i32.const 0
    local.set 5
    local.get 4
    local.get 5
    i32.store offset=188
    local.get 4
    local.get 0
    i32.store offset=184
    local.get 4
    local.get 1
    i32.store offset=180
    i32.const 300
    local.set 6
    local.get 4
    local.get 6
    i32.store offset=136
    local.get 4
    i32.load offset=184
    local.set 7
    i32.const 1
    local.set 8
    local.get 7
    local.set 9
    local.get 8
    local.set 10
    local.get 9
    local.get 10
    i32.gt_s
    local.set 11
    i32.const 1
    local.set 12
    local.get 11
    local.get 12
    i32.and
    local.set 13
    block  ;; label = @1
      local.get 13
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=180
      local.set 14
      local.get 14
      i32.load offset=4
      local.set 15
      local.get 15
      call $atoi
      local.set 16
      local.get 4
      local.get 16
      i32.store offset=136
      local.get 4
      i32.load offset=136
      local.set 17
      i32.const 0
      local.set 18
      local.get 17
      local.set 19
      local.get 18
      local.set 20
      local.get 19
      local.get 20
      i32.le_s
      local.set 21
      i32.const 1
      local.set 22
      local.get 21
      local.get 22
      i32.and
      local.set 23
      block  ;; label = @2
        local.get 23
        i32.eqz
        br_if 0 (;@2;)
        i32.const 300
        local.set 24
        local.get 4
        local.get 24
        i32.store offset=136
      end
    end
    i32.const 2166
    local.set 25
    i32.const 0
    local.set 26
    local.get 25
    local.get 26
    call $printf
    drop
    i32.const 2654
    local.set 27
    i32.const 0
    local.set 28
    local.get 27
    local.get 28
    call $printf
    drop
    i32.const 2166
    local.set 29
    i32.const 0
    local.set 30
    local.get 29
    local.get 30
    call $printf
    drop
    i32.const 5
    local.set 31
    local.get 4
    local.get 31
    i32.store offset=48
    i32.const 2131
    local.set 32
    i32.const 48
    local.set 33
    local.get 4
    local.get 33
    i32.add
    local.set 34
    local.get 32
    local.get 34
    call $printf
    drop
    i32.const 8
    local.set 35
    local.get 4
    local.get 35
    i32.store offset=64
    i32.const 2145
    local.set 36
    i32.const 64
    local.set 37
    local.get 4
    local.get 37
    i32.add
    local.set 38
    local.get 36
    local.get 38
    call $printf
    drop
    i32.const 1000
    local.set 39
    local.get 4
    local.get 39
    i32.store offset=80
    i32.const 2098
    local.set 40
    i32.const 80
    local.set 41
    local.get 4
    local.get 41
    i32.add
    local.set 42
    local.get 40
    local.get 42
    call $printf
    drop
    i32.const 50
    local.set 43
    local.get 4
    local.get 43
    i32.store offset=96
    i32.const 2077
    local.set 44
    i32.const 96
    local.set 45
    local.get 4
    local.get 45
    i32.add
    local.set 46
    local.get 44
    local.get 46
    call $printf
    drop
    local.get 4
    i32.load offset=136
    local.set 47
    local.get 4
    local.get 47
    i32.store offset=112
    i32.const 1584
    local.set 48
    i32.const 112
    local.set 49
    local.get 4
    local.get 49
    i32.add
    local.set 50
    local.get 48
    local.get 50
    call $printf
    drop
    i32.const 2166
    local.set 51
    i32.const 0
    local.set 52
    local.get 51
    local.get 52
    call $printf
    drop
    i32.const 0
    local.set 53
    local.get 53
    i32.load offset=4432
    local.set 54
    local.get 54
    call $fflush
    drop
    i32.const 0
    local.set 55
    local.get 4
    local.get 55
    i32.store offset=132
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=132
        local.set 56
        i32.const 5
        local.set 57
        local.get 56
        local.set 58
        local.get 57
        local.set 59
        local.get 58
        local.get 59
        i32.lt_s
        local.set 60
        i32.const 1
        local.set 61
        local.get 60
        local.get 61
        i32.and
        local.set 62
        local.get 62
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=132
        local.set 63
        i32.const 5232
        local.set 64
        i32.const 5
        local.set 65
        local.get 63
        local.get 65
        i32.shl
        local.set 66
        local.get 64
        local.get 66
        i32.add
        local.set 67
        i32.const 1000
        local.set 68
        local.get 67
        local.get 68
        call $init_account
        local.get 4
        i32.load offset=132
        local.set 69
        i32.const 1
        local.set 70
        local.get 69
        local.get 70
        i32.add
        local.set 71
        local.get 4
        local.get 71
        i32.store offset=132
        br 0 (;@2;)
      end
    end
    i32.const 5392
    local.set 72
    local.get 72
    call $init_statistics
    i32.const 2247
    local.set 73
    i32.const 0
    local.set 74
    local.get 73
    local.get 74
    call $printf
    drop
    call $print_account_status
    i32.const 2534
    local.set 75
    i32.const 0
    local.set 76
    local.get 75
    local.get 76
    call $printf
    drop
    i32.const 2264
    local.set 77
    i32.const 0
    local.set 78
    local.get 77
    local.get 78
    call $printf
    drop
    i32.const 2451
    local.set 79
    i32.const 0
    local.set 80
    local.get 79
    local.get 80
    call $printf
    drop
    i32.const 0
    local.set 81
    local.get 81
    i32.load offset=4432
    local.set 82
    local.get 82
    call $fflush
    drop
    i32.const 2590
    local.set 83
    i32.const 0
    local.set 84
    local.get 83
    local.get 84
    call $printf
    drop
    i32.const 0
    local.set 85
    local.get 85
    i32.load offset=4432
    local.set 86
    local.get 86
    call $fflush
    drop
    i32.const 5424
    local.set 87
    i32.const 0
    local.set 88
    i32.const 1
    local.set 89
    i32.const 136
    local.set 90
    local.get 4
    local.get 90
    i32.add
    local.set 91
    local.get 91
    local.set 92
    local.get 87
    local.get 88
    local.get 89
    local.get 92
    call $__pthread_create
    local.set 93
    local.get 4
    local.get 93
    i32.store offset=128
    local.get 4
    i32.load offset=128
    local.set 94
    block  ;; label = @1
      block  ;; label = @2
        local.get 94
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=128
        local.set 95
        local.get 95
        call $strerror
        local.set 96
        local.get 4
        local.get 96
        i32.store
        i32.const 1696
        local.set 97
        local.get 97
        local.get 4
        call $printf
        drop
        i32.const 1
        local.set 98
        local.get 4
        local.get 98
        i32.store offset=188
        br 1 (;@1;)
      end
      i32.const 1460
      local.set 99
      i32.const 0
      local.set 100
      local.get 99
      local.get 100
      call $printf
      drop
      i32.const 0
      local.set 101
      local.get 101
      i32.load offset=4432
      local.set 102
      local.get 102
      call $fflush
      drop
      i32.const 140
      local.set 103
      local.get 4
      local.get 103
      i32.add
      local.set 104
      local.get 104
      local.set 105
      i32.const 0
      local.set 106
      i32.const 2
      local.set 107
      local.get 105
      local.get 106
      local.get 107
      local.get 106
      call $__pthread_create
      local.set 108
      local.get 4
      local.get 108
      i32.store offset=128
      local.get 4
      i32.load offset=128
      local.set 109
      block  ;; label = @2
        local.get 109
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=128
        local.set 110
        local.get 110
        call $strerror
        local.set 111
        local.get 4
        local.get 111
        i32.store offset=16
        i32.const 1652
        local.set 112
        i32.const 16
        local.set 113
        local.get 4
        local.get 113
        i32.add
        local.set 114
        local.get 112
        local.get 114
        call $printf
        drop
        i32.const 0
        local.set 115
        i32.const 0
        local.set 116
        local.get 116
        local.get 115
        i32.store8 offset=4928
        i32.const 0
        local.set 117
        local.get 117
        i32.load offset=5424
        local.set 118
        i32.const 0
        local.set 119
        local.get 118
        local.get 119
        call $__pthread_join
        drop
        i32.const 1
        local.set 120
        local.get 4
        local.get 120
        i32.store offset=188
        br 1 (;@1;)
      end
      i32.const 0
      local.set 121
      local.get 4
      local.get 121
      i32.store offset=124
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.load offset=124
          local.set 122
          i32.const 8
          local.set 123
          local.get 122
          local.set 124
          local.get 123
          local.set 125
          local.get 124
          local.get 125
          i32.lt_s
          local.set 126
          i32.const 1
          local.set 127
          local.get 126
          local.get 127
          i32.and
          local.set 128
          local.get 128
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          i32.load offset=124
          local.set 129
          i32.const 144
          local.set 130
          local.get 4
          local.get 130
          i32.add
          local.set 131
          local.get 131
          local.set 132
          i32.const 2
          local.set 133
          local.get 129
          local.get 133
          i32.shl
          local.set 134
          local.get 132
          local.get 134
          i32.add
          local.set 135
          local.get 4
          i32.load offset=124
          local.set 136
          i32.const 0
          local.set 137
          i32.const 3
          local.set 138
          local.get 135
          local.get 137
          local.get 138
          local.get 136
          call $__pthread_create
          local.set 139
          local.get 4
          local.get 139
          i32.store offset=128
          local.get 4
          i32.load offset=128
          local.set 140
          block  ;; label = @4
            local.get 140
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=124
            local.set 141
            local.get 4
            i32.load offset=128
            local.set 142
            local.get 142
            call $strerror
            local.set 143
            local.get 4
            local.get 143
            i32.store offset=36
            local.get 4
            local.get 141
            i32.store offset=32
            i32.const 1605
            local.set 144
            i32.const 32
            local.set 145
            local.get 4
            local.get 145
            i32.add
            local.set 146
            local.get 144
            local.get 146
            call $printf
            drop
            i32.const 0
            local.set 147
            i32.const 0
            local.set 148
            local.get 148
            local.get 147
            i32.store8 offset=4928
            i32.const 0
            local.set 149
            local.get 4
            local.get 149
            i32.store offset=120
            block  ;; label = @5
              loop  ;; label = @6
                local.get 4
                i32.load offset=120
                local.set 150
                local.get 4
                i32.load offset=124
                local.set 151
                local.get 150
                local.set 152
                local.get 151
                local.set 153
                local.get 152
                local.get 153
                i32.lt_s
                local.set 154
                i32.const 1
                local.set 155
                local.get 154
                local.get 155
                i32.and
                local.set 156
                local.get 156
                i32.eqz
                br_if 1 (;@5;)
                local.get 4
                i32.load offset=120
                local.set 157
                i32.const 144
                local.set 158
                local.get 4
                local.get 158
                i32.add
                local.set 159
                local.get 159
                local.set 160
                i32.const 2
                local.set 161
                local.get 157
                local.get 161
                i32.shl
                local.set 162
                local.get 160
                local.get 162
                i32.add
                local.set 163
                local.get 163
                i32.load
                local.set 164
                i32.const 0
                local.set 165
                local.get 164
                local.get 165
                call $__pthread_join
                drop
                local.get 4
                i32.load offset=120
                local.set 166
                i32.const 1
                local.set 167
                local.get 166
                local.get 167
                i32.add
                local.set 168
                local.get 4
                local.get 168
                i32.store offset=120
                br 0 (;@6;)
              end
            end
            local.get 4
            i32.load offset=140
            local.set 169
            i32.const 0
            local.set 170
            local.get 169
            local.get 170
            call $__pthread_join
            drop
            i32.const 0
            local.set 171
            local.get 171
            i32.load offset=5424
            local.set 172
            i32.const 0
            local.set 173
            local.get 172
            local.get 173
            call $__pthread_join
            drop
            i32.const 1
            local.set 174
            local.get 4
            local.get 174
            i32.store offset=188
            br 3 (;@1;)
          end
          local.get 4
          i32.load offset=124
          local.set 175
          i32.const 1
          local.set 176
          local.get 175
          local.get 176
          i32.add
          local.set 177
          local.get 4
          local.get 177
          i32.store offset=124
          br 0 (;@3;)
        end
      end
      i32.const 0
      local.set 178
      local.get 4
      local.get 178
      i32.store offset=116
      block  ;; label = @2
        loop  ;; label = @3
          local.get 4
          i32.load offset=116
          local.set 179
          i32.const 8
          local.set 180
          local.get 179
          local.set 181
          local.get 180
          local.set 182
          local.get 181
          local.get 182
          i32.lt_s
          local.set 183
          i32.const 1
          local.set 184
          local.get 183
          local.get 184
          i32.and
          local.set 185
          local.get 185
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          i32.load offset=116
          local.set 186
          i32.const 144
          local.set 187
          local.get 4
          local.get 187
          i32.add
          local.set 188
          local.get 188
          local.set 189
          i32.const 2
          local.set 190
          local.get 186
          local.get 190
          i32.shl
          local.set 191
          local.get 189
          local.get 191
          i32.add
          local.set 192
          local.get 192
          i32.load
          local.set 193
          i32.const 0
          local.set 194
          local.get 193
          local.get 194
          call $__pthread_join
          drop
          local.get 4
          i32.load offset=116
          local.set 195
          i32.const 1
          local.set 196
          local.get 195
          local.get 196
          i32.add
          local.set 197
          local.get 4
          local.get 197
          i32.store offset=116
          br 0 (;@3;)
        end
      end
      local.get 4
      i32.load offset=140
      local.set 198
      i32.const 0
      local.set 199
      local.get 198
      local.get 199
      call $__pthread_join
      drop
      i32.const 0
      local.set 200
      local.get 200
      i32.load offset=5424
      local.set 201
      i32.const 0
      local.set 202
      local.get 201
      local.get 202
      call $__pthread_join
      drop
      call $cleanup
      i32.const 0
      local.set 203
      local.get 4
      local.get 203
      i32.store offset=188
    end
    local.get 4
    i32.load offset=188
    local.set 204
    i32.const 192
    local.set 205
    local.get 4
    local.get 205
    i32.add
    local.set 206
    local.get 206
    global.set $__stack_pointer
    local.get 204
    return)
  (func $time (type 11) (param i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 0
    i64.store offset=8
    i32.const 0
    i64.const 1000000000
    local.get 1
    i32.const 8
    i32.add
    call $__wasi_clock_time_get
    drop
    local.get 1
    i64.load offset=8
    i64.const 1000000000
    i64.div_u
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i64.store
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $clock_nanosleep (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i64 i32 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    i32.const 28
    local.set 5
    block  ;; label = @1
      local.get 1
      i32.const 1
      i32.gt_u
      br_if 0 (;@1;)
      i64.const 0
      local.set 6
      local.get 4
      i32.const 104
      i32.add
      local.tee 5
      i64.const 0
      i64.store
      local.get 4
      i32.const 80
      i32.add
      local.tee 7
      i64.const 0
      i64.store
      local.get 4
      i32.const 96
      i32.add
      i64.const 0
      i64.store
      local.get 4
      i32.const 88
      i32.add
      i64.const 0
      i64.store
      local.get 4
      i32.const 72
      i32.add
      i64.const 0
      i64.store
      local.get 5
      local.get 1
      i32.store16
      local.get 7
      local.get 0
      i32.load
      i32.store
      local.get 4
      i64.const 0
      i64.store offset=64
      i32.const 28
      local.set 5
      local.get 2
      i32.load offset=8
      local.tee 1
      i32.const 999999999
      i32.gt_u
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i64.load
          local.tee 8
          i64.const 0
          i64.lt_s
          br_if 0 (;@3;)
          local.get 4
          i32.const 0
          i32.store offset=20
          local.get 4
          local.get 8
          i64.const 0
          i64.const 1000000000
          i64.const 0
          local.get 4
          i32.const 20
          i32.add
          call $__muloti4
          i64.const -1
          local.set 6
          i64.const 0
          local.get 4
          i32.const 8
          i32.add
          i64.load
          local.tee 8
          i64.const 1
          i64.and
          i64.sub
          local.tee 9
          local.get 8
          i64.xor
          i64.const 0
          i64.ne
          local.get 4
          i32.load offset=20
          i32.const 0
          i32.ne
          i32.or
          br_if 0 (;@3;)
          local.get 9
          i64.const 0
          i64.lt_s
          br_if 0 (;@3;)
          i64.const 0
          local.get 4
          i64.load
          local.tee 10
          local.get 1
          i64.extend_i32_u
          i64.add
          local.tee 8
          local.get 10
          i64.lt_u
          i64.extend_i32_u
          local.get 9
          i64.add
          local.tee 9
          i64.const 1
          i64.and
          i64.sub
          local.tee 10
          local.get 9
          i64.xor
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 10
          i64.const -1
          i64.gt_s
          br_if 1 (;@2;)
        end
        local.get 6
        local.set 8
      end
      local.get 4
      local.get 8
      i64.store offset=88
      i32.const 58
      i32.const 0
      local.get 4
      i32.const 64
      i32.add
      local.get 4
      i32.const 24
      i32.add
      i32.const 1
      local.get 4
      i32.const 60
      i32.add
      call $__wasi_poll_oneoff
      local.get 4
      i32.load16_u offset=32
      i32.or
      select
      local.set 5
    end
    local.get 4
    i32.const 112
    i32.add
    global.set $__stack_pointer
    local.get 5)
  (func $sleep (type 2) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    local.get 0
    i32.store
    local.get 1
    local.get 0
    i64.extend_i32_u
    i64.store offset=16
    i32.const 1495
    local.get 1
    call $printf
    drop
    i32.const 2716
    i32.const 0
    local.get 1
    i32.const 16
    i32.add
    i32.const 0
    call $clock_nanosleep
    local.set 2
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    local.get 2
    select)
  (func $usleep (type 2) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.const 1000000
    i32.div_u
    local.tee 2
    i64.extend_i32_u
    i64.store
    local.get 1
    local.get 0
    local.get 2
    i32.const 1000000
    i32.mul
    i32.sub
    i32.const 1000
    i32.mul
    i32.store offset=8
    i32.const 0
    local.set 0
    block  ;; label = @1
      i32.const 2716
      i32.const 0
      local.get 1
      i32.const 0
      call $clock_nanosleep
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      global.get $__tls_base
      i32.const 0
      i32.add
      local.get 2
      i32.store
      i32.const -1
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $sched_yield (type 8) (result i32)
    (local i32)
    block  ;; label = @1
      call $__wasi_sched_yield
      local.tee 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    global.get $__tls_base
    i32.const 0
    i32.add
    local.get 0
    i32.store
    i32.const -1)
  (func $malloc (type 2) (param i32) (result i32)
    local.get 0
    call $dlmalloc)
  (func $dlmalloc (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load offset=5428
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 0
        i32.const 1
        i32.atomic.rmw.xchg offset=5928
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        loop  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=5928
            br_if 0 (;@4;)
            i32.const 0
            i32.const 1
            i32.atomic.rmw.xchg offset=5928
            i32.eqz
            br_if 2 (;@2;)
          end
          block  ;; label = @4
            local.get 2
            i32.const 63
            i32.and
            br_if 0 (;@4;)
            call $sched_yield
            drop
          end
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          br 0 (;@3;)
        end
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=5428
        br_if 0 (;@2;)
        i32.const 0
        i32.const 2
        i32.store offset=5448
        i32.const 0
        i64.const -1
        i64.store offset=5440 align=4
        i32.const 0
        i64.const 281474976776192
        i64.store offset=5432 align=4
        i32.const 0
        i64.const 2
        i64.store offset=5896 align=4
        i32.const 0
        local.get 1
        i32.const 4
        i32.add
        i32.const -16
        i32.and
        i32.const 1431655768
        i32.xor
        i32.store offset=5428
      end
      i32.const 0
      i32.const 0
      i32.atomic.store offset=5928
    end
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=5896
      i32.const 2
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 1
      i32.atomic.rmw.xchg offset=5900
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=5900
          br_if 0 (;@3;)
          i32.const 0
          i32.const 1
          i32.atomic.rmw.xchg offset=5900
          i32.eqz
          br_if 2 (;@1;)
        end
        block  ;; label = @3
          local.get 2
          i32.const 63
          i32.and
          br_if 0 (;@3;)
          call $sched_yield
          drop
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=5476
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=5428
                            local.tee 3
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.const 1
                              i32.atomic.rmw.xchg offset=5928
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 1
                              local.set 2
                              loop  ;; label = @14
                                block  ;; label = @15
                                  i32.const 0
                                  i32.load offset=5928
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  i32.const 1
                                  i32.atomic.rmw.xchg offset=5928
                                  i32.eqz
                                  br_if 2 (;@13;)
                                end
                                block  ;; label = @15
                                  local.get 2
                                  i32.const 63
                                  i32.and
                                  br_if 0 (;@15;)
                                  call $sched_yield
                                  drop
                                end
                                local.get 2
                                i32.const 1
                                i32.add
                                local.set 2
                                br 0 (;@14;)
                              end
                            end
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=5428
                              local.tee 3
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 2
                              i32.store offset=5448
                              i32.const 0
                              i64.const -1
                              i64.store offset=5440 align=4
                              i32.const 0
                              i64.const 281474976776192
                              i64.store offset=5432 align=4
                              i32.const 0
                              i64.const 2
                              i64.store offset=5896 align=4
                              i32.const 0
                              local.get 1
                              i32.const 8
                              i32.add
                              i32.const -16
                              i32.and
                              i32.const 1431655768
                              i32.xor
                              local.tee 3
                              i32.store offset=5428
                            end
                            i32.const 0
                            i32.const 0
                            i32.atomic.store offset=5928
                          end
                          i32.const 131072
                          i32.const 72608
                          i32.lt_u
                          br_if 1 (;@10;)
                          i32.const 131072
                          i32.const 72608
                          i32.sub
                          i32.const 89
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 2
                          i32.const 0
                          i32.const 72608
                          i32.store offset=5904
                          i32.const 0
                          i32.const 72608
                          i32.store offset=5468
                          i32.const 0
                          local.get 3
                          i32.store offset=5488
                          i32.const 0
                          i32.const -1
                          i32.store offset=5484
                          i32.const 0
                          i32.const 131072
                          i32.const 72608
                          i32.sub
                          i32.store offset=5908
                          loop  ;; label = @12
                            local.get 2
                            i32.const 5512
                            i32.add
                            local.get 2
                            i32.const 5500
                            i32.add
                            local.tee 3
                            i32.store
                            local.get 3
                            local.get 2
                            i32.const 5492
                            i32.add
                            local.tee 4
                            i32.store
                            local.get 2
                            i32.const 5504
                            i32.add
                            local.get 4
                            i32.store
                            local.get 2
                            i32.const 5520
                            i32.add
                            local.get 2
                            i32.const 5508
                            i32.add
                            local.tee 4
                            i32.store
                            local.get 4
                            local.get 3
                            i32.store
                            local.get 2
                            i32.const 5528
                            i32.add
                            local.get 2
                            i32.const 5516
                            i32.add
                            local.tee 3
                            i32.store
                            local.get 3
                            local.get 4
                            i32.store
                            local.get 2
                            i32.const 5524
                            i32.add
                            local.get 3
                            i32.store
                            local.get 2
                            i32.const 32
                            i32.add
                            local.tee 2
                            i32.const 256
                            i32.ne
                            br_if 0 (;@12;)
                          end
                          i32.const 72608
                          i32.const -8
                          i32.const 72608
                          i32.sub
                          i32.const 15
                          i32.and
                          local.tee 2
                          i32.add
                          local.tee 3
                          i32.const 4
                          i32.add
                          i32.const 131072
                          i32.const 72608
                          i32.sub
                          i32.const -56
                          i32.add
                          local.tee 4
                          local.get 2
                          i32.sub
                          local.tee 2
                          i32.const 1
                          i32.or
                          i32.store
                          i32.const 0
                          i32.const 0
                          i32.load offset=5444
                          i32.store offset=5480
                          i32.const 0
                          local.get 2
                          i32.store offset=5464
                          i32.const 0
                          local.get 3
                          i32.store offset=5476
                          local.get 4
                          i32.const 72608
                          i32.add
                          i32.const 4
                          i32.add
                          i32.const 56
                          i32.store
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.const 236
                            i32.gt_u
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=5452
                              local.tee 5
                              i32.const 16
                              local.get 0
                              i32.const 19
                              i32.add
                              i32.const -16
                              i32.and
                              local.get 0
                              i32.const 11
                              i32.lt_u
                              select
                              local.tee 6
                              i32.const 3
                              i32.shr_u
                              local.tee 3
                              i32.shr_u
                              local.tee 2
                              i32.const 3
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 2
                                  i32.const 1
                                  i32.and
                                  local.get 3
                                  i32.or
                                  i32.const 1
                                  i32.xor
                                  local.tee 4
                                  i32.const 3
                                  i32.shl
                                  local.tee 3
                                  i32.const 5492
                                  i32.add
                                  local.tee 2
                                  local.get 3
                                  i32.const 5500
                                  i32.add
                                  i32.load
                                  local.tee 3
                                  i32.load offset=8
                                  local.tee 6
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 5
                                  i32.const -2
                                  local.get 4
                                  i32.rotl
                                  i32.and
                                  i32.store offset=5452
                                  br 1 (;@14;)
                                end
                                local.get 2
                                local.get 6
                                i32.store offset=8
                                local.get 6
                                local.get 2
                                i32.store offset=12
                              end
                              local.get 3
                              i32.const 8
                              i32.add
                              local.set 2
                              local.get 3
                              local.get 4
                              i32.const 3
                              i32.shl
                              local.tee 4
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 3
                              local.get 4
                              i32.add
                              local.tee 3
                              local.get 3
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 12 (;@1;)
                            end
                            local.get 6
                            i32.const 0
                            i32.load offset=5460
                            local.tee 7
                            i32.le_u
                            br_if 1 (;@11;)
                            block  ;; label = @13
                              local.get 2
                              i32.eqz
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 2
                                  local.get 3
                                  i32.shl
                                  i32.const 2
                                  local.get 3
                                  i32.shl
                                  local.tee 2
                                  i32.const 0
                                  local.get 2
                                  i32.sub
                                  i32.or
                                  i32.and
                                  i32.ctz
                                  local.tee 3
                                  i32.const 3
                                  i32.shl
                                  local.tee 2
                                  i32.const 5492
                                  i32.add
                                  local.tee 4
                                  local.get 2
                                  i32.const 5500
                                  i32.add
                                  i32.load
                                  local.tee 2
                                  i32.load offset=8
                                  local.tee 0
                                  i32.ne
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.get 5
                                  i32.const -2
                                  local.get 3
                                  i32.rotl
                                  i32.and
                                  local.tee 5
                                  i32.store offset=5452
                                  br 1 (;@14;)
                                end
                                local.get 4
                                local.get 0
                                i32.store offset=8
                                local.get 0
                                local.get 4
                                i32.store offset=12
                              end
                              local.get 2
                              local.get 6
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 2
                              local.get 3
                              i32.const 3
                              i32.shl
                              local.tee 3
                              i32.add
                              local.get 3
                              local.get 6
                              i32.sub
                              local.tee 4
                              i32.store
                              local.get 2
                              local.get 6
                              i32.add
                              local.tee 0
                              local.get 4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              block  ;; label = @14
                                local.get 7
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 7
                                i32.const -8
                                i32.and
                                i32.const 5492
                                i32.add
                                local.set 6
                                i32.const 0
                                i32.load offset=5472
                                local.set 3
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    i32.const 1
                                    local.get 7
                                    i32.const 3
                                    i32.shr_u
                                    i32.shl
                                    local.tee 8
                                    i32.and
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.get 5
                                    local.get 8
                                    i32.or
                                    i32.store offset=5452
                                    local.get 6
                                    local.set 8
                                    br 1 (;@15;)
                                  end
                                  local.get 6
                                  i32.load offset=8
                                  local.set 8
                                end
                                local.get 8
                                local.get 3
                                i32.store offset=12
                                local.get 6
                                local.get 3
                                i32.store offset=8
                                local.get 3
                                local.get 6
                                i32.store offset=12
                                local.get 3
                                local.get 8
                                i32.store offset=8
                              end
                              local.get 2
                              i32.const 8
                              i32.add
                              local.set 2
                              i32.const 0
                              local.get 0
                              i32.store offset=5472
                              i32.const 0
                              local.get 4
                              i32.store offset=5460
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load offset=5456
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.ctz
                            i32.const 2
                            i32.shl
                            i32.const 5756
                            i32.add
                            i32.load
                            local.tee 0
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 6
                            i32.sub
                            local.set 3
                            local.get 0
                            local.set 4
                            block  ;; label = @13
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=16
                                  local.tee 2
                                  br_if 0 (;@15;)
                                  local.get 4
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 2
                                  i32.eqz
                                  br_if 2 (;@13;)
                                end
                                local.get 2
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 6
                                i32.sub
                                local.tee 4
                                local.get 3
                                local.get 4
                                local.get 3
                                i32.lt_u
                                local.tee 4
                                select
                                local.set 3
                                local.get 2
                                local.get 0
                                local.get 4
                                select
                                local.set 0
                                local.get 2
                                local.set 4
                                br 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.load offset=24
                            local.set 10
                            block  ;; label = @13
                              local.get 0
                              i32.load offset=12
                              local.tee 8
                              local.get 0
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 0
                              i32.load offset=8
                              local.tee 2
                              i32.const 0
                              i32.load offset=5468
                              i32.lt_u
                              drop
                              local.get 8
                              local.get 2
                              i32.store offset=8
                              local.get 2
                              local.get 8
                              i32.store offset=12
                              br 11 (;@2;)
                            end
                            block  ;; label = @13
                              local.get 0
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 2
                              br_if 0 (;@13;)
                              local.get 0
                              i32.load offset=16
                              local.tee 2
                              i32.eqz
                              br_if 4 (;@9;)
                              local.get 0
                              i32.const 16
                              i32.add
                              local.set 4
                            end
                            loop  ;; label = @13
                              local.get 4
                              local.set 11
                              local.get 2
                              local.tee 8
                              i32.const 20
                              i32.add
                              local.tee 4
                              i32.load
                              local.tee 2
                              br_if 0 (;@13;)
                              local.get 8
                              i32.const 16
                              i32.add
                              local.set 4
                              local.get 8
                              i32.load offset=16
                              local.tee 2
                              br_if 0 (;@13;)
                            end
                            local.get 11
                            i32.const 0
                            i32.store
                            br 10 (;@2;)
                          end
                          i32.const -1
                          local.set 6
                          local.get 0
                          i32.const -65
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 19
                          i32.add
                          local.tee 2
                          i32.const -16
                          i32.and
                          local.set 6
                          i32.const 0
                          i32.load offset=5456
                          local.tee 7
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 11
                          block  ;; label = @12
                            local.get 6
                            i32.const 256
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 31
                            local.set 11
                            local.get 6
                            i32.const 16777215
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 6
                            i32.const 38
                            local.get 2
                            i32.const 8
                            i32.shr_u
                            i32.clz
                            local.tee 2
                            i32.sub
                            i32.shr_u
                            i32.const 1
                            i32.and
                            local.get 2
                            i32.const 1
                            i32.shl
                            i32.sub
                            i32.const 62
                            i32.add
                            local.set 11
                          end
                          i32.const 0
                          local.get 6
                          i32.sub
                          local.set 3
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 11
                                  i32.const 2
                                  i32.shl
                                  i32.const 5756
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 2
                                  i32.const 0
                                  local.set 8
                                  br 1 (;@14;)
                                end
                                i32.const 0
                                local.set 2
                                local.get 6
                                i32.const 0
                                i32.const 25
                                local.get 11
                                i32.const 1
                                i32.shr_u
                                i32.sub
                                local.get 11
                                i32.const 31
                                i32.eq
                                select
                                i32.shl
                                local.set 0
                                i32.const 0
                                local.set 8
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 4
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    local.get 6
                                    i32.sub
                                    local.tee 5
                                    local.get 3
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 5
                                    local.set 3
                                    local.get 4
                                    local.set 8
                                    local.get 5
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 3
                                    local.get 4
                                    local.set 8
                                    local.get 4
                                    local.set 2
                                    br 3 (;@13;)
                                  end
                                  local.get 2
                                  local.get 4
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.tee 5
                                  local.get 5
                                  local.get 4
                                  local.get 0
                                  i32.const 29
                                  i32.shr_u
                                  i32.const 4
                                  i32.and
                                  i32.add
                                  i32.const 16
                                  i32.add
                                  i32.load
                                  local.tee 4
                                  i32.eq
                                  select
                                  local.get 2
                                  local.get 5
                                  select
                                  local.set 2
                                  local.get 0
                                  i32.const 1
                                  i32.shl
                                  local.set 0
                                  local.get 4
                                  br_if 0 (;@15;)
                                end
                              end
                              block  ;; label = @14
                                local.get 2
                                local.get 8
                                i32.or
                                br_if 0 (;@14;)
                                i32.const 0
                                local.set 8
                                i32.const 2
                                local.get 11
                                i32.shl
                                local.tee 2
                                i32.const 0
                                local.get 2
                                i32.sub
                                i32.or
                                local.get 7
                                i32.and
                                local.tee 2
                                i32.eqz
                                br_if 3 (;@11;)
                                local.get 2
                                i32.ctz
                                i32.const 2
                                i32.shl
                                i32.const 5756
                                i32.add
                                i32.load
                                local.set 2
                              end
                              local.get 2
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            loop  ;; label = @13
                              local.get 2
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 6
                              i32.sub
                              local.tee 5
                              local.get 3
                              i32.lt_u
                              local.set 0
                              block  ;; label = @14
                                local.get 2
                                i32.load offset=16
                                local.tee 4
                                br_if 0 (;@14;)
                                local.get 2
                                i32.const 20
                                i32.add
                                i32.load
                                local.set 4
                              end
                              local.get 5
                              local.get 3
                              local.get 0
                              select
                              local.set 3
                              local.get 2
                              local.get 8
                              local.get 0
                              select
                              local.set 8
                              local.get 4
                              local.set 2
                              local.get 4
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 8
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const 0
                          i32.load offset=5460
                          local.get 6
                          i32.sub
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 8
                          i32.load offset=24
                          local.set 11
                          block  ;; label = @12
                            local.get 8
                            i32.load offset=12
                            local.tee 0
                            local.get 8
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load offset=8
                            local.tee 2
                            i32.const 0
                            i32.load offset=5468
                            i32.lt_u
                            drop
                            local.get 0
                            local.get 2
                            i32.store offset=8
                            local.get 2
                            local.get 0
                            i32.store offset=12
                            br 9 (;@3;)
                          end
                          block  ;; label = @12
                            local.get 8
                            i32.const 20
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 2
                            br_if 0 (;@12;)
                            local.get 8
                            i32.load offset=16
                            local.tee 2
                            i32.eqz
                            br_if 4 (;@8;)
                            local.get 8
                            i32.const 16
                            i32.add
                            local.set 4
                          end
                          loop  ;; label = @12
                            local.get 4
                            local.set 5
                            local.get 2
                            local.tee 0
                            i32.const 20
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 2
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 16
                            i32.add
                            local.set 4
                            local.get 0
                            i32.load offset=16
                            local.tee 2
                            br_if 0 (;@12;)
                          end
                          local.get 5
                          i32.const 0
                          i32.store
                          br 8 (;@3;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=5460
                          local.tee 2
                          local.get 6
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=5472
                          local.set 3
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 2
                              local.get 6
                              i32.sub
                              local.tee 4
                              i32.const 16
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 3
                              local.get 6
                              i32.add
                              local.tee 0
                              local.get 4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              local.get 3
                              local.get 2
                              i32.add
                              local.get 4
                              i32.store
                              local.get 3
                              local.get 6
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            local.get 3
                            local.get 2
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 3
                            local.get 2
                            i32.add
                            local.tee 2
                            local.get 2
                            i32.load offset=4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            local.set 0
                            i32.const 0
                            local.set 4
                          end
                          i32.const 0
                          local.get 4
                          i32.store offset=5460
                          i32.const 0
                          local.get 0
                          i32.store offset=5472
                          local.get 3
                          i32.const 8
                          i32.add
                          local.set 2
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=5464
                          local.tee 2
                          local.get 6
                          i32.le_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=5476
                          local.tee 3
                          local.get 6
                          i32.add
                          local.tee 4
                          local.get 2
                          local.get 6
                          i32.sub
                          local.tee 2
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          i32.const 0
                          local.get 2
                          i32.store offset=5464
                          i32.const 0
                          local.get 4
                          i32.store offset=5476
                          local.get 3
                          local.get 6
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 3
                          i32.const 8
                          i32.add
                          local.set 2
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=5428
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.const 1
                            i32.atomic.rmw.xchg offset=5928
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 1
                            local.set 2
                            loop  ;; label = @13
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=5928
                                br_if 0 (;@14;)
                                i32.const 0
                                i32.const 1
                                i32.atomic.rmw.xchg offset=5928
                                i32.eqz
                                br_if 2 (;@12;)
                              end
                              block  ;; label = @14
                                local.get 2
                                i32.const 63
                                i32.and
                                br_if 0 (;@14;)
                                call $sched_yield
                                drop
                              end
                              local.get 2
                              i32.const 1
                              i32.add
                              local.set 2
                              br 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=5428
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.const 2
                            i32.store offset=5448
                            i32.const 0
                            i64.const -1
                            i64.store offset=5440 align=4
                            i32.const 0
                            i64.const 281474976776192
                            i64.store offset=5432 align=4
                            i32.const 0
                            i64.const 2
                            i64.store offset=5896 align=4
                            i32.const 0
                            local.get 1
                            i32.const 12
                            i32.add
                            i32.const -16
                            i32.and
                            i32.const 1431655768
                            i32.xor
                            i32.store offset=5428
                          end
                          i32.const 0
                          i32.const 0
                          i32.atomic.store offset=5928
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=5436
                          local.tee 2
                          local.get 6
                          i32.const 71
                          i32.add
                          local.tee 11
                          i32.add
                          i32.const 0
                          local.get 2
                          i32.sub
                          i32.and
                          local.tee 8
                          local.get 6
                          i32.gt_u
                          br_if 0 (;@11;)
                          global.get $__tls_base
                          i32.const 0
                          i32.add
                          i32.const 48
                          i32.store
                          i32.const 0
                          local.set 2
                          br 10 (;@1;)
                        end
                        i32.const 0
                        local.set 5
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=5892
                          local.tee 2
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=5884
                            local.tee 3
                            local.get 8
                            i32.add
                            local.tee 4
                            local.get 3
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 4
                            local.get 2
                            i32.le_u
                            br_if 1 (;@11;)
                          end
                          global.get $__tls_base
                          i32.const 0
                          i32.add
                          i32.const 48
                          i32.store
                          i32.const 0
                          local.set 2
                          br 10 (;@1;)
                        end
                        i32.const -1
                        local.set 0
                        i32.const 0
                        i32.load8_u offset=5896
                        i32.const 4
                        i32.and
                        br_if 6 (;@4;)
                        i32.const 0
                        local.set 3
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=5476
                          local.tee 2
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 5904
                          local.set 3
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 3
                              i32.load
                              local.tee 4
                              local.get 2
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 4
                              local.get 3
                              i32.load offset=4
                              i32.add
                              local.get 2
                              i32.gt_u
                              br_if 2 (;@11;)
                            end
                            local.get 3
                            i32.load offset=8
                            local.tee 3
                            br_if 0 (;@12;)
                          end
                          i32.const 0
                          local.set 3
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.const 1
                          i32.atomic.rmw.xchg offset=5928
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 1
                          local.set 2
                          loop  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=5928
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 1
                              i32.atomic.rmw.xchg offset=5928
                              i32.eqz
                              br_if 2 (;@11;)
                            end
                            block  ;; label = @13
                              local.get 2
                              i32.const 63
                              i32.and
                              br_if 0 (;@13;)
                              call $sched_yield
                              drop
                            end
                            local.get 2
                            i32.const 1
                            i32.add
                            local.set 2
                            br 0 (;@12;)
                          end
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 3
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 2
                            i32.const 0
                            call $sbrk
                            local.tee 0
                            i32.const -1
                            i32.eq
                            br_if 6 (;@6;)
                            local.get 8
                            local.set 5
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=5432
                              local.tee 2
                              i32.const -1
                              i32.add
                              local.tee 3
                              local.get 0
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 8
                              local.get 0
                              i32.sub
                              local.get 3
                              local.get 0
                              i32.add
                              i32.const 0
                              local.get 2
                              i32.sub
                              i32.and
                              i32.add
                              local.set 5
                            end
                            block  ;; label = @13
                              local.get 5
                              local.get 6
                              i32.gt_u
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 2
                              br 7 (;@6;)
                            end
                            block  ;; label = @13
                              local.get 5
                              i32.const 2147483646
                              i32.le_u
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 2
                              br 7 (;@6;)
                            end
                            i32.const 0
                            local.set 2
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=5892
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=5884
                              local.tee 4
                              local.get 5
                              i32.add
                              local.tee 7
                              local.get 4
                              i32.le_u
                              br_if 7 (;@6;)
                              local.get 7
                              local.get 3
                              i32.gt_u
                              br_if 7 (;@6;)
                            end
                            local.get 5
                            call $sbrk
                            local.tee 3
                            local.get 0
                            i32.ne
                            br_if 1 (;@11;)
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.set 2
                          local.get 11
                          i32.const 0
                          i32.load offset=5464
                          i32.sub
                          i32.const 0
                          i32.load offset=5436
                          local.tee 4
                          i32.add
                          i32.const 0
                          local.get 4
                          i32.sub
                          i32.and
                          local.tee 5
                          i32.const 2147483646
                          i32.gt_u
                          br_if 5 (;@6;)
                          local.get 5
                          call $sbrk
                          local.tee 0
                          local.get 3
                          i32.load
                          local.get 3
                          i32.load offset=4
                          i32.add
                          i32.eq
                          br_if 4 (;@7;)
                          local.get 0
                          local.set 3
                        end
                        i32.const 0
                        local.set 2
                        block  ;; label = @11
                          local.get 5
                          local.get 6
                          i32.const 72
                          i32.add
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const -1
                          i32.eq
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 11
                            local.get 5
                            i32.sub
                            i32.const 0
                            i32.load offset=5436
                            local.tee 2
                            i32.add
                            i32.const 0
                            local.get 2
                            i32.sub
                            i32.and
                            local.tee 2
                            i32.const 2147483646
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 3
                            local.set 0
                            br 7 (;@5;)
                          end
                          block  ;; label = @12
                            local.get 2
                            call $sbrk
                            i32.const -1
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 2
                            local.get 5
                            i32.add
                            local.set 5
                            local.get 3
                            local.set 0
                            br 7 (;@5;)
                          end
                          i32.const 0
                          local.get 5
                          i32.sub
                          call $sbrk
                          drop
                          i32.const 0
                          local.set 2
                          br 5 (;@6;)
                        end
                        local.get 3
                        local.set 0
                        local.get 3
                        i32.const -1
                        i32.ne
                        br_if 5 (;@5;)
                        br 4 (;@6;)
                      end
                      unreachable
                      unreachable
                    end
                    i32.const 0
                    local.set 8
                    br 6 (;@2;)
                  end
                  i32.const 0
                  local.set 0
                  br 4 (;@3;)
                end
                local.get 5
                local.set 2
                local.get 0
                i32.const -1
                i32.ne
                br_if 1 (;@5;)
              end
              i32.const 0
              i32.const 0
              i32.load offset=5896
              i32.const 4
              i32.or
              i32.store offset=5896
              i32.const -1
              local.set 0
              local.get 2
              local.set 5
            end
            i32.const 0
            i32.const 0
            i32.atomic.store offset=5928
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 8
                i32.const 2147483646
                i32.gt_u
                br_if 0 (;@6;)
                local.get 0
                i32.const -1
                i32.ne
                br_if 0 (;@6;)
                block  ;; label = @7
                  i32.const 0
                  i32.const 1
                  i32.atomic.rmw.xchg offset=5928
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 2
                  loop  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=5928
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.const 1
                      i32.atomic.rmw.xchg offset=5928
                      i32.eqz
                      br_if 2 (;@7;)
                    end
                    block  ;; label = @9
                      local.get 2
                      i32.const 63
                      i32.and
                      br_if 0 (;@9;)
                      call $sched_yield
                      drop
                    end
                    local.get 2
                    i32.const 1
                    i32.add
                    local.set 2
                    br 0 (;@8;)
                  end
                end
                local.get 8
                call $sbrk
                local.set 0
                i32.const 0
                call $sbrk
                local.set 2
                i32.const 0
                i32.const 0
                i32.atomic.store offset=5928
                local.get 0
                i32.const -1
                i32.eq
                br_if 2 (;@4;)
                local.get 2
                i32.const -1
                i32.eq
                br_if 2 (;@4;)
                local.get 0
                local.get 2
                i32.ge_u
                br_if 2 (;@4;)
                local.get 2
                local.get 0
                i32.sub
                local.tee 5
                local.get 6
                i32.const 56
                i32.add
                i32.gt_u
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              local.get 0
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=5884
            local.get 5
            i32.add
            local.tee 2
            i32.store offset=5884
            block  ;; label = @5
              local.get 2
              i32.const 0
              i32.load offset=5888
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.get 2
              i32.store offset=5888
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=5476
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 5904
                              local.set 2
                              loop  ;; label = @14
                                local.get 0
                                local.get 2
                                i32.load
                                local.tee 4
                                local.get 2
                                i32.load offset=4
                                local.tee 8
                                i32.add
                                i32.eq
                                br_if 2 (;@12;)
                                local.get 2
                                i32.load offset=8
                                local.tee 2
                                br_if 0 (;@14;)
                                br 3 (;@11;)
                              end
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=5468
                                local.tee 2
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 0
                                local.get 2
                                i32.ge_u
                                br_if 1 (;@13;)
                              end
                              i32.const 0
                              local.get 0
                              i32.store offset=5468
                            end
                            i32.const 0
                            local.set 2
                            i32.const 0
                            local.get 5
                            i32.store offset=5908
                            i32.const 0
                            local.get 0
                            i32.store offset=5904
                            i32.const 0
                            i32.const -1
                            i32.store offset=5484
                            i32.const 0
                            i32.const 0
                            i32.load offset=5428
                            i32.store offset=5488
                            i32.const 0
                            i32.const 0
                            i32.store offset=5916
                            loop  ;; label = @13
                              local.get 2
                              i32.const 5512
                              i32.add
                              local.get 2
                              i32.const 5500
                              i32.add
                              local.tee 3
                              i32.store
                              local.get 3
                              local.get 2
                              i32.const 5492
                              i32.add
                              local.tee 4
                              i32.store
                              local.get 2
                              i32.const 5504
                              i32.add
                              local.get 4
                              i32.store
                              local.get 2
                              i32.const 5520
                              i32.add
                              local.get 2
                              i32.const 5508
                              i32.add
                              local.tee 4
                              i32.store
                              local.get 4
                              local.get 3
                              i32.store
                              local.get 2
                              i32.const 5528
                              i32.add
                              local.get 2
                              i32.const 5516
                              i32.add
                              local.tee 3
                              i32.store
                              local.get 3
                              local.get 4
                              i32.store
                              local.get 2
                              i32.const 5524
                              i32.add
                              local.get 3
                              i32.store
                              local.get 2
                              i32.const 32
                              i32.add
                              local.tee 2
                              i32.const 256
                              i32.ne
                              br_if 0 (;@13;)
                            end
                            local.get 0
                            i32.const -8
                            local.get 0
                            i32.sub
                            i32.const 15
                            i32.and
                            local.tee 2
                            i32.add
                            local.tee 3
                            local.get 5
                            i32.const -56
                            i32.add
                            local.tee 4
                            local.get 2
                            i32.sub
                            local.tee 2
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            i32.const 0
                            i32.load offset=5444
                            i32.store offset=5480
                            i32.const 0
                            local.get 2
                            i32.store offset=5464
                            i32.const 0
                            local.get 3
                            i32.store offset=5476
                            local.get 0
                            local.get 4
                            i32.add
                            i32.const 56
                            i32.store offset=4
                            br 2 (;@10;)
                          end
                          local.get 3
                          local.get 0
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 3
                          local.get 4
                          i32.lt_u
                          br_if 0 (;@11;)
                          local.get 2
                          i32.load offset=12
                          i32.const 8
                          i32.and
                          br_if 0 (;@11;)
                          local.get 3
                          i32.const -8
                          local.get 3
                          i32.sub
                          i32.const 15
                          i32.and
                          local.tee 4
                          i32.add
                          local.tee 0
                          i32.const 0
                          i32.load offset=5464
                          local.get 5
                          i32.add
                          local.tee 11
                          local.get 4
                          i32.sub
                          local.tee 4
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          local.get 2
                          local.get 8
                          local.get 5
                          i32.add
                          i32.store offset=4
                          i32.const 0
                          i32.const 0
                          i32.load offset=5444
                          i32.store offset=5480
                          i32.const 0
                          local.get 4
                          i32.store offset=5464
                          i32.const 0
                          local.get 0
                          i32.store offset=5476
                          local.get 3
                          local.get 11
                          i32.add
                          i32.const 56
                          i32.store offset=4
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 0
                          i32.const 0
                          i32.load offset=5468
                          local.tee 8
                          i32.ge_u
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 0
                          i32.store offset=5468
                          local.get 0
                          local.set 8
                        end
                        local.get 0
                        local.get 5
                        i32.add
                        local.set 4
                        i32.const 5904
                        local.set 2
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                loop  ;; label = @15
                                  local.get 2
                                  i32.load
                                  local.get 4
                                  i32.eq
                                  br_if 1 (;@14;)
                                  local.get 2
                                  i32.load offset=8
                                  local.tee 2
                                  br_if 0 (;@15;)
                                  br 2 (;@13;)
                                end
                              end
                              local.get 2
                              i32.load8_u offset=12
                              i32.const 8
                              i32.and
                              i32.eqz
                              br_if 1 (;@12;)
                            end
                            i32.const 5904
                            local.set 2
                            loop  ;; label = @13
                              block  ;; label = @14
                                local.get 2
                                i32.load
                                local.tee 4
                                local.get 3
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 4
                                local.get 2
                                i32.load offset=4
                                i32.add
                                local.tee 4
                                local.get 3
                                i32.gt_u
                                br_if 3 (;@11;)
                              end
                              local.get 2
                              i32.load offset=8
                              local.set 2
                              br 0 (;@13;)
                            end
                          end
                          local.get 2
                          local.get 0
                          i32.store
                          local.get 2
                          local.get 2
                          i32.load offset=4
                          local.get 5
                          i32.add
                          i32.store offset=4
                          local.get 0
                          i32.const -8
                          local.get 0
                          i32.sub
                          i32.const 15
                          i32.and
                          i32.add
                          local.tee 11
                          local.get 6
                          i32.const 3
                          i32.or
                          i32.store offset=4
                          local.get 4
                          i32.const -8
                          local.get 4
                          i32.sub
                          i32.const 15
                          i32.and
                          i32.add
                          local.tee 5
                          local.get 11
                          local.get 6
                          i32.add
                          local.tee 6
                          i32.sub
                          local.set 2
                          block  ;; label = @12
                            local.get 5
                            local.get 3
                            i32.ne
                            br_if 0 (;@12;)
                            i32.const 0
                            local.get 6
                            i32.store offset=5476
                            i32.const 0
                            i32.const 0
                            i32.load offset=5464
                            local.get 2
                            i32.add
                            local.tee 2
                            i32.store offset=5464
                            local.get 6
                            local.get 2
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            br 7 (;@5;)
                          end
                          block  ;; label = @12
                            local.get 5
                            i32.const 0
                            i32.load offset=5472
                            i32.ne
                            br_if 0 (;@12;)
                            i32.const 0
                            local.get 6
                            i32.store offset=5472
                            i32.const 0
                            i32.const 0
                            i32.load offset=5460
                            local.get 2
                            i32.add
                            local.tee 2
                            i32.store offset=5460
                            local.get 6
                            local.get 2
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            local.get 6
                            local.get 2
                            i32.add
                            local.get 2
                            i32.store
                            br 7 (;@5;)
                          end
                          local.get 5
                          i32.load offset=4
                          local.tee 3
                          i32.const 3
                          i32.and
                          i32.const 1
                          i32.ne
                          br_if 5 (;@6;)
                          local.get 3
                          i32.const -8
                          i32.and
                          local.set 7
                          block  ;; label = @12
                            local.get 3
                            i32.const 255
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 5
                            i32.load offset=8
                            local.tee 4
                            local.get 3
                            i32.const 3
                            i32.shr_u
                            local.tee 8
                            i32.const 3
                            i32.shl
                            i32.const 5492
                            i32.add
                            local.tee 0
                            i32.eq
                            drop
                            block  ;; label = @13
                              local.get 5
                              i32.load offset=12
                              local.tee 3
                              local.get 4
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 0
                              i32.load offset=5452
                              i32.const -2
                              local.get 8
                              i32.rotl
                              i32.and
                              i32.store offset=5452
                              br 6 (;@7;)
                            end
                            local.get 3
                            local.get 0
                            i32.eq
                            drop
                            local.get 3
                            local.get 4
                            i32.store offset=8
                            local.get 4
                            local.get 3
                            i32.store offset=12
                            br 5 (;@7;)
                          end
                          local.get 5
                          i32.load offset=24
                          local.set 10
                          block  ;; label = @12
                            local.get 5
                            i32.load offset=12
                            local.tee 0
                            local.get 5
                            i32.eq
                            br_if 0 (;@12;)
                            local.get 5
                            i32.load offset=8
                            local.tee 3
                            local.get 8
                            i32.lt_u
                            drop
                            local.get 0
                            local.get 3
                            i32.store offset=8
                            local.get 3
                            local.get 0
                            i32.store offset=12
                            br 4 (;@8;)
                          end
                          block  ;; label = @12
                            local.get 5
                            i32.const 20
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 3
                            br_if 0 (;@12;)
                            local.get 5
                            i32.load offset=16
                            local.tee 3
                            i32.eqz
                            br_if 3 (;@9;)
                            local.get 5
                            i32.const 16
                            i32.add
                            local.set 4
                          end
                          loop  ;; label = @12
                            local.get 4
                            local.set 8
                            local.get 3
                            local.tee 0
                            i32.const 20
                            i32.add
                            local.tee 4
                            i32.load
                            local.tee 3
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 16
                            i32.add
                            local.set 4
                            local.get 0
                            i32.load offset=16
                            local.tee 3
                            br_if 0 (;@12;)
                          end
                          local.get 8
                          i32.const 0
                          i32.store
                          br 3 (;@8;)
                        end
                        local.get 0
                        i32.const -8
                        local.get 0
                        i32.sub
                        i32.const 15
                        i32.and
                        local.tee 2
                        i32.add
                        local.tee 11
                        local.get 5
                        i32.const -56
                        i32.add
                        local.tee 8
                        local.get 2
                        i32.sub
                        local.tee 2
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 8
                        i32.add
                        i32.const 56
                        i32.store offset=4
                        local.get 3
                        local.get 4
                        i32.const 55
                        local.get 4
                        i32.sub
                        i32.const 15
                        i32.and
                        i32.add
                        i32.const -63
                        i32.add
                        local.tee 8
                        local.get 8
                        local.get 3
                        i32.const 16
                        i32.add
                        i32.lt_u
                        select
                        local.tee 8
                        i32.const 35
                        i32.store offset=4
                        i32.const 0
                        i32.const 0
                        i32.load offset=5444
                        i32.store offset=5480
                        i32.const 0
                        local.get 2
                        i32.store offset=5464
                        i32.const 0
                        local.get 11
                        i32.store offset=5476
                        local.get 8
                        i32.const 16
                        i32.add
                        i32.const 0
                        i64.load offset=5912 align=4
                        i64.store align=4
                        local.get 8
                        i32.const 0
                        i64.load offset=5904 align=4
                        i64.store offset=8 align=4
                        i32.const 0
                        local.get 8
                        i32.const 8
                        i32.add
                        i32.store offset=5912
                        i32.const 0
                        local.get 5
                        i32.store offset=5908
                        i32.const 0
                        local.get 0
                        i32.store offset=5904
                        i32.const 0
                        i32.const 0
                        i32.store offset=5916
                        local.get 8
                        i32.const 36
                        i32.add
                        local.set 2
                        loop  ;; label = @11
                          local.get 2
                          i32.const 7
                          i32.store
                          local.get 2
                          i32.const 4
                          i32.add
                          local.tee 2
                          local.get 4
                          i32.lt_u
                          br_if 0 (;@11;)
                        end
                        local.get 8
                        local.get 3
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 8
                        local.get 8
                        i32.load offset=4
                        i32.const -2
                        i32.and
                        i32.store offset=4
                        local.get 8
                        local.get 8
                        local.get 3
                        i32.sub
                        local.tee 0
                        i32.store
                        local.get 3
                        local.get 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        block  ;; label = @11
                          local.get 0
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const -8
                          i32.and
                          i32.const 5492
                          i32.add
                          local.set 2
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=5452
                              local.tee 4
                              i32.const 1
                              local.get 0
                              i32.const 3
                              i32.shr_u
                              i32.shl
                              local.tee 0
                              i32.and
                              br_if 0 (;@13;)
                              i32.const 0
                              local.get 4
                              local.get 0
                              i32.or
                              i32.store offset=5452
                              local.get 2
                              local.set 4
                              br 1 (;@12;)
                            end
                            local.get 2
                            i32.load offset=8
                            local.set 4
                          end
                          local.get 4
                          local.get 3
                          i32.store offset=12
                          local.get 2
                          local.get 3
                          i32.store offset=8
                          local.get 3
                          local.get 2
                          i32.store offset=12
                          local.get 3
                          local.get 4
                          i32.store offset=8
                          br 1 (;@10;)
                        end
                        i32.const 31
                        local.set 2
                        block  ;; label = @11
                          local.get 0
                          i32.const 16777215
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 0
                          i32.const 38
                          local.get 0
                          i32.const 8
                          i32.shr_u
                          i32.clz
                          local.tee 2
                          i32.sub
                          i32.shr_u
                          i32.const 1
                          i32.and
                          local.get 2
                          i32.const 1
                          i32.shl
                          i32.sub
                          i32.const 62
                          i32.add
                          local.set 2
                        end
                        local.get 3
                        local.get 2
                        i32.store offset=28
                        local.get 3
                        i64.const 0
                        i64.store offset=16 align=4
                        local.get 2
                        i32.const 2
                        i32.shl
                        i32.const 5756
                        i32.add
                        local.set 4
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=5456
                          local.tee 8
                          i32.const 1
                          local.get 2
                          i32.shl
                          local.tee 5
                          i32.and
                          br_if 0 (;@11;)
                          local.get 4
                          local.get 3
                          i32.store
                          i32.const 0
                          local.get 8
                          local.get 5
                          i32.or
                          i32.store offset=5456
                          local.get 3
                          local.get 4
                          i32.store offset=24
                          local.get 3
                          local.get 3
                          i32.store offset=8
                          local.get 3
                          local.get 3
                          i32.store offset=12
                          br 1 (;@10;)
                        end
                        local.get 0
                        i32.const 0
                        i32.const 25
                        local.get 2
                        i32.const 1
                        i32.shr_u
                        i32.sub
                        local.get 2
                        i32.const 31
                        i32.eq
                        select
                        i32.shl
                        local.set 2
                        local.get 4
                        i32.load
                        local.set 8
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 8
                            local.tee 4
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 0
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 2
                            i32.const 29
                            i32.shr_u
                            local.set 8
                            local.get 2
                            i32.const 1
                            i32.shl
                            local.set 2
                            local.get 4
                            local.get 8
                            i32.const 4
                            i32.and
                            i32.add
                            i32.const 16
                            i32.add
                            local.tee 5
                            i32.load
                            local.tee 8
                            br_if 0 (;@12;)
                          end
                          local.get 5
                          local.get 3
                          i32.store
                          local.get 3
                          local.get 4
                          i32.store offset=24
                          local.get 3
                          local.get 3
                          i32.store offset=12
                          local.get 3
                          local.get 3
                          i32.store offset=8
                          br 1 (;@10;)
                        end
                        local.get 4
                        i32.load offset=8
                        local.tee 2
                        local.get 3
                        i32.store offset=12
                        local.get 4
                        local.get 3
                        i32.store offset=8
                        local.get 3
                        i32.const 0
                        i32.store offset=24
                        local.get 3
                        local.get 4
                        i32.store offset=12
                        local.get 3
                        local.get 2
                        i32.store offset=8
                      end
                      i32.const 0
                      i32.load offset=5464
                      local.tee 2
                      local.get 6
                      i32.le_u
                      br_if 5 (;@4;)
                      i32.const 0
                      i32.load offset=5476
                      local.tee 3
                      local.get 6
                      i32.add
                      local.tee 4
                      local.get 2
                      local.get 6
                      i32.sub
                      local.tee 2
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      i32.const 0
                      local.get 2
                      i32.store offset=5464
                      i32.const 0
                      local.get 4
                      i32.store offset=5476
                      local.get 3
                      local.get 6
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 3
                      i32.const 8
                      i32.add
                      local.set 2
                      br 8 (;@1;)
                    end
                    i32.const 0
                    local.set 0
                  end
                  local.get 10
                  i32.eqz
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 5
                      local.get 5
                      i32.load offset=28
                      local.tee 4
                      i32.const 2
                      i32.shl
                      i32.const 5756
                      i32.add
                      local.tee 3
                      i32.load
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 3
                      local.get 0
                      i32.store
                      local.get 0
                      br_if 1 (;@8;)
                      i32.const 0
                      i32.const 0
                      i32.load offset=5456
                      i32.const -2
                      local.get 4
                      i32.rotl
                      i32.and
                      i32.store offset=5456
                      br 2 (;@7;)
                    end
                    local.get 10
                    i32.const 16
                    i32.const 20
                    local.get 10
                    i32.load offset=16
                    local.get 5
                    i32.eq
                    select
                    i32.add
                    local.get 0
                    i32.store
                    local.get 0
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  local.get 0
                  local.get 10
                  i32.store offset=24
                  block  ;; label = @8
                    local.get 5
                    i32.load offset=16
                    local.tee 3
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 3
                    i32.store offset=16
                    local.get 3
                    local.get 0
                    i32.store offset=24
                  end
                  local.get 5
                  i32.const 20
                  i32.add
                  i32.load
                  local.tee 3
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 20
                  i32.add
                  local.get 3
                  i32.store
                  local.get 3
                  local.get 0
                  i32.store offset=24
                end
                local.get 7
                local.get 2
                i32.add
                local.set 2
                local.get 5
                local.get 7
                i32.add
                local.tee 5
                i32.load offset=4
                local.set 3
              end
              local.get 5
              local.get 3
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 6
              local.get 2
              i32.add
              local.get 2
              i32.store
              local.get 6
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              block  ;; label = @6
                local.get 2
                i32.const 255
                i32.gt_u
                br_if 0 (;@6;)
                local.get 2
                i32.const -8
                i32.and
                i32.const 5492
                i32.add
                local.set 3
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=5452
                    local.tee 4
                    i32.const 1
                    local.get 2
                    i32.const 3
                    i32.shr_u
                    i32.shl
                    local.tee 2
                    i32.and
                    br_if 0 (;@8;)
                    i32.const 0
                    local.get 4
                    local.get 2
                    i32.or
                    i32.store offset=5452
                    local.get 3
                    local.set 2
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.load offset=8
                  local.set 2
                end
                local.get 2
                local.get 6
                i32.store offset=12
                local.get 3
                local.get 6
                i32.store offset=8
                local.get 6
                local.get 3
                i32.store offset=12
                local.get 6
                local.get 2
                i32.store offset=8
                br 1 (;@5;)
              end
              i32.const 31
              local.set 3
              block  ;; label = @6
                local.get 2
                i32.const 16777215
                i32.gt_u
                br_if 0 (;@6;)
                local.get 2
                i32.const 38
                local.get 2
                i32.const 8
                i32.shr_u
                i32.clz
                local.tee 3
                i32.sub
                i32.shr_u
                i32.const 1
                i32.and
                local.get 3
                i32.const 1
                i32.shl
                i32.sub
                i32.const 62
                i32.add
                local.set 3
              end
              local.get 6
              local.get 3
              i32.store offset=28
              local.get 6
              i64.const 0
              i64.store offset=16 align=4
              local.get 3
              i32.const 2
              i32.shl
              i32.const 5756
              i32.add
              local.set 4
              block  ;; label = @6
                i32.const 0
                i32.load offset=5456
                local.tee 0
                i32.const 1
                local.get 3
                i32.shl
                local.tee 8
                i32.and
                br_if 0 (;@6;)
                local.get 4
                local.get 6
                i32.store
                i32.const 0
                local.get 0
                local.get 8
                i32.or
                i32.store offset=5456
                local.get 6
                local.get 4
                i32.store offset=24
                local.get 6
                local.get 6
                i32.store offset=8
                local.get 6
                local.get 6
                i32.store offset=12
                br 1 (;@5;)
              end
              local.get 2
              i32.const 0
              i32.const 25
              local.get 3
              i32.const 1
              i32.shr_u
              i32.sub
              local.get 3
              i32.const 31
              i32.eq
              select
              i32.shl
              local.set 3
              local.get 4
              i32.load
              local.set 0
              block  ;; label = @6
                loop  ;; label = @7
                  local.get 0
                  local.tee 4
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 2
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 3
                  i32.const 29
                  i32.shr_u
                  local.set 0
                  local.get 3
                  i32.const 1
                  i32.shl
                  local.set 3
                  local.get 4
                  local.get 0
                  i32.const 4
                  i32.and
                  i32.add
                  i32.const 16
                  i32.add
                  local.tee 8
                  i32.load
                  local.tee 0
                  br_if 0 (;@7;)
                end
                local.get 8
                local.get 6
                i32.store
                local.get 6
                local.get 4
                i32.store offset=24
                local.get 6
                local.get 6
                i32.store offset=12
                local.get 6
                local.get 6
                i32.store offset=8
                br 1 (;@5;)
              end
              local.get 4
              i32.load offset=8
              local.tee 2
              local.get 6
              i32.store offset=12
              local.get 4
              local.get 6
              i32.store offset=8
              local.get 6
              i32.const 0
              i32.store offset=24
              local.get 6
              local.get 4
              i32.store offset=12
              local.get 6
              local.get 2
              i32.store offset=8
            end
            local.get 11
            i32.const 8
            i32.add
            local.set 2
            br 3 (;@1;)
          end
          global.get $__tls_base
          i32.const 0
          i32.add
          i32.const 48
          i32.store
          i32.const 0
          local.set 2
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 11
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 8
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 5756
              i32.add
              local.tee 2
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 0
              i32.store
              local.get 0
              br_if 1 (;@4;)
              i32.const 0
              local.get 7
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              local.tee 7
              i32.store offset=5456
              br 2 (;@3;)
            end
            local.get 11
            i32.const 16
            i32.const 20
            local.get 11
            i32.load offset=16
            local.get 8
            i32.eq
            select
            i32.add
            local.get 0
            i32.store
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 11
          i32.store offset=24
          block  ;; label = @4
            local.get 8
            i32.load offset=16
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 0
            i32.store offset=24
          end
          local.get 8
          i32.const 20
          i32.add
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 20
          i32.add
          local.get 2
          i32.store
          local.get 2
          local.get 0
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 8
            local.get 3
            local.get 6
            i32.add
            local.tee 2
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 8
            local.get 2
            i32.add
            local.tee 2
            local.get 2
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 8
          local.get 6
          i32.add
          local.tee 0
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 8
          local.get 6
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          i32.add
          local.get 3
          i32.store
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const -8
            i32.and
            i32.const 5492
            i32.add
            local.set 2
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=5452
                local.tee 4
                i32.const 1
                local.get 3
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 3
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 4
                local.get 3
                i32.or
                i32.store offset=5452
                local.get 2
                local.set 3
                br 1 (;@5;)
              end
              local.get 2
              i32.load offset=8
              local.set 3
            end
            local.get 3
            local.get 0
            i32.store offset=12
            local.get 2
            local.get 0
            i32.store offset=8
            local.get 0
            local.get 2
            i32.store offset=12
            local.get 0
            local.get 3
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 2
          block  ;; label = @4
            local.get 3
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 38
            local.get 3
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 2
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 2
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 2
          end
          local.get 0
          local.get 2
          i32.store offset=28
          local.get 0
          i64.const 0
          i64.store offset=16 align=4
          local.get 2
          i32.const 2
          i32.shl
          i32.const 5756
          i32.add
          local.set 4
          block  ;; label = @4
            local.get 7
            i32.const 1
            local.get 2
            i32.shl
            local.tee 6
            i32.and
            br_if 0 (;@4;)
            local.get 4
            local.get 0
            i32.store
            i32.const 0
            local.get 7
            local.get 6
            i32.or
            i32.store offset=5456
            local.get 0
            local.get 4
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=8
            local.get 0
            local.get 0
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 3
          i32.const 0
          i32.const 25
          local.get 2
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 2
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 2
          local.get 4
          i32.load
          local.set 6
          block  ;; label = @4
            loop  ;; label = @5
              local.get 6
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 3
              i32.eq
              br_if 1 (;@4;)
              local.get 2
              i32.const 29
              i32.shr_u
              local.set 6
              local.get 2
              i32.const 1
              i32.shl
              local.set 2
              local.get 4
              local.get 6
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 5
              i32.load
              local.tee 6
              br_if 0 (;@5;)
            end
            local.get 5
            local.get 0
            i32.store
            local.get 0
            local.get 4
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 0
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 4
          i32.load offset=8
          local.tee 2
          local.get 0
          i32.store offset=12
          local.get 4
          local.get 0
          i32.store offset=8
          local.get 0
          i32.const 0
          i32.store offset=24
          local.get 0
          local.get 4
          i32.store offset=12
          local.get 0
          local.get 2
          i32.store offset=8
        end
        local.get 8
        i32.const 8
        i32.add
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 10
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=28
            local.tee 4
            i32.const 2
            i32.shl
            i32.const 5756
            i32.add
            local.tee 2
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 2
            local.get 8
            i32.store
            local.get 8
            br_if 1 (;@3;)
            i32.const 0
            local.get 9
            i32.const -2
            local.get 4
            i32.rotl
            i32.and
            i32.store offset=5456
            br 2 (;@2;)
          end
          local.get 10
          i32.const 16
          i32.const 20
          local.get 10
          i32.load offset=16
          local.get 0
          i32.eq
          select
          i32.add
          local.get 8
          i32.store
          local.get 8
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 8
        local.get 10
        i32.store offset=24
        block  ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          local.get 2
          i32.store offset=16
          local.get 2
          local.get 8
          i32.store offset=24
        end
        local.get 0
        i32.const 20
        i32.add
        i32.load
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 8
        i32.const 20
        i32.add
        local.get 2
        i32.store
        local.get 2
        local.get 8
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          local.get 6
          i32.add
          local.tee 2
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 2
          i32.add
          local.tee 2
          local.get 2
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 0
        local.get 6
        i32.add
        local.tee 4
        local.get 3
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 6
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 4
        local.get 3
        i32.add
        local.get 3
        i32.store
        block  ;; label = @3
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const -8
          i32.and
          i32.const 5492
          i32.add
          local.set 6
          i32.const 0
          i32.load offset=5472
          local.set 2
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 7
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 8
              local.get 5
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 8
              local.get 5
              i32.or
              i32.store offset=5452
              local.get 6
              local.set 8
              br 1 (;@4;)
            end
            local.get 6
            i32.load offset=8
            local.set 8
          end
          local.get 8
          local.get 2
          i32.store offset=12
          local.get 6
          local.get 2
          i32.store offset=8
          local.get 2
          local.get 6
          i32.store offset=12
          local.get 2
          local.get 8
          i32.store offset=8
        end
        i32.const 0
        local.get 4
        i32.store offset=5472
        i32.const 0
        local.get 3
        i32.store offset=5460
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 2
    end
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=5896
      i32.const 2
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.atomic.store offset=5900
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $free (type 3) (param i32)
    local.get 0
    call $dlfree)
  (func $dlfree (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.set 1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=5896
        i32.const 2
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.atomic.rmw.xchg offset=5900
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        loop  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=5900
            br_if 0 (;@4;)
            i32.const 0
            i32.const 1
            i32.atomic.rmw.xchg offset=5900
            i32.eqz
            br_if 2 (;@2;)
          end
          block  ;; label = @4
            local.get 2
            i32.const 63
            i32.and
            br_if 0 (;@4;)
            call $sched_yield
            drop
          end
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          br 0 (;@3;)
        end
      end
      local.get 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 0
      i32.const -8
      i32.and
      local.tee 2
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          local.get 1
          i32.load
          local.tee 0
          i32.sub
          local.tee 1
          i32.const 0
          i32.load offset=5468
          local.tee 4
          i32.lt_u
          br_if 1 (;@2;)
          local.get 0
          local.get 2
          i32.add
          local.set 2
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 0
                i32.load offset=5472
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 0
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 1
                  i32.load offset=8
                  local.tee 4
                  local.get 0
                  i32.const 3
                  i32.shr_u
                  local.tee 5
                  i32.const 3
                  i32.shl
                  i32.const 5492
                  i32.add
                  local.tee 6
                  i32.eq
                  drop
                  block  ;; label = @8
                    local.get 1
                    i32.load offset=12
                    local.tee 0
                    local.get 4
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=5452
                    i32.const -2
                    local.get 5
                    i32.rotl
                    i32.and
                    i32.store offset=5452
                    br 5 (;@3;)
                  end
                  local.get 0
                  local.get 6
                  i32.eq
                  drop
                  local.get 0
                  local.get 4
                  i32.store offset=8
                  local.get 4
                  local.get 0
                  i32.store offset=12
                  br 4 (;@3;)
                end
                local.get 1
                i32.load offset=24
                local.set 7
                block  ;; label = @7
                  local.get 1
                  i32.load offset=12
                  local.tee 6
                  local.get 1
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 1
                  i32.load offset=8
                  local.tee 0
                  local.get 4
                  i32.lt_u
                  drop
                  local.get 6
                  local.get 0
                  i32.store offset=8
                  local.get 0
                  local.get 6
                  i32.store offset=12
                  br 3 (;@4;)
                end
                block  ;; label = @7
                  local.get 1
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 0
                  br_if 0 (;@7;)
                  local.get 1
                  i32.load offset=16
                  local.tee 0
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 1
                  i32.const 16
                  i32.add
                  local.set 4
                end
                loop  ;; label = @7
                  local.get 4
                  local.set 5
                  local.get 0
                  local.tee 6
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 0
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 4
                  local.get 6
                  i32.load offset=16
                  local.tee 0
                  br_if 0 (;@7;)
                end
                local.get 5
                i32.const 0
                i32.store
                br 2 (;@4;)
              end
              local.get 3
              i32.load offset=4
              local.tee 0
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 2 (;@3;)
              local.get 3
              local.get 0
              i32.const -2
              i32.and
              i32.store offset=4
              i32.const 0
              local.get 2
              i32.store offset=5460
              local.get 3
              local.get 2
              i32.store
              local.get 1
              local.get 2
              i32.const 1
              i32.or
              i32.store offset=4
              br 3 (;@2;)
            end
            i32.const 0
            local.set 6
          end
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 1
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 5756
              i32.add
              local.tee 0
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=5456
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store offset=5456
              br 2 (;@3;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 1
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 6
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 1
            i32.load offset=16
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 6
            i32.store offset=24
          end
          local.get 1
          i32.const 20
          i32.add
          i32.load
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          i32.const 20
          i32.add
          local.get 0
          i32.store
          local.get 0
          local.get 6
          i32.store offset=24
        end
        local.get 1
        local.get 3
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=4
        local.tee 0
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 2
                  i32.and
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 3
                    i32.const 0
                    i32.load offset=5476
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    local.get 1
                    i32.store offset=5476
                    i32.const 0
                    i32.const 0
                    i32.load offset=5464
                    local.get 2
                    i32.add
                    local.tee 2
                    i32.store offset=5464
                    local.get 1
                    local.get 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    i32.const 0
                    i32.load offset=5472
                    i32.ne
                    br_if 6 (;@2;)
                    i32.const 0
                    i32.const 0
                    i32.store offset=5460
                    i32.const 0
                    i32.const 0
                    i32.store offset=5472
                    br 6 (;@2;)
                  end
                  block  ;; label = @8
                    local.get 3
                    i32.const 0
                    i32.load offset=5472
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    local.get 1
                    i32.store offset=5472
                    i32.const 0
                    i32.const 0
                    i32.load offset=5460
                    local.get 2
                    i32.add
                    local.tee 2
                    i32.store offset=5460
                    local.get 1
                    local.get 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 2
                    i32.add
                    local.get 2
                    i32.store
                    br 6 (;@2;)
                  end
                  local.get 0
                  i32.const -8
                  i32.and
                  local.get 2
                  i32.add
                  local.set 2
                  block  ;; label = @8
                    local.get 0
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 3
                    i32.load offset=8
                    local.tee 4
                    local.get 0
                    i32.const 3
                    i32.shr_u
                    local.tee 5
                    i32.const 3
                    i32.shl
                    i32.const 5492
                    i32.add
                    local.tee 6
                    i32.eq
                    drop
                    block  ;; label = @9
                      local.get 3
                      i32.load offset=12
                      local.tee 0
                      local.get 4
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.const 0
                      i32.load offset=5452
                      i32.const -2
                      local.get 5
                      i32.rotl
                      i32.and
                      i32.store offset=5452
                      br 5 (;@4;)
                    end
                    local.get 0
                    local.get 6
                    i32.eq
                    drop
                    local.get 0
                    local.get 4
                    i32.store offset=8
                    local.get 4
                    local.get 0
                    i32.store offset=12
                    br 4 (;@4;)
                  end
                  local.get 3
                  i32.load offset=24
                  local.set 7
                  block  ;; label = @8
                    local.get 3
                    i32.load offset=12
                    local.tee 6
                    local.get 3
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 3
                    i32.load offset=8
                    local.tee 0
                    i32.const 0
                    i32.load offset=5468
                    i32.lt_u
                    drop
                    local.get 6
                    local.get 0
                    i32.store offset=8
                    local.get 0
                    local.get 6
                    i32.store offset=12
                    br 3 (;@5;)
                  end
                  block  ;; label = @8
                    local.get 3
                    i32.const 20
                    i32.add
                    local.tee 4
                    i32.load
                    local.tee 0
                    br_if 0 (;@8;)
                    local.get 3
                    i32.load offset=16
                    local.tee 0
                    i32.eqz
                    br_if 2 (;@6;)
                    local.get 3
                    i32.const 16
                    i32.add
                    local.set 4
                  end
                  loop  ;; label = @8
                    local.get 4
                    local.set 5
                    local.get 0
                    local.tee 6
                    i32.const 20
                    i32.add
                    local.tee 4
                    i32.load
                    local.tee 0
                    br_if 0 (;@8;)
                    local.get 6
                    i32.const 16
                    i32.add
                    local.set 4
                    local.get 6
                    i32.load offset=16
                    local.tee 0
                    br_if 0 (;@8;)
                  end
                  local.get 5
                  i32.const 0
                  i32.store
                  br 2 (;@5;)
                end
                local.get 3
                local.get 0
                i32.const -2
                i32.and
                i32.store offset=4
                local.get 1
                local.get 2
                i32.add
                local.get 2
                i32.store
                local.get 1
                local.get 2
                i32.const 1
                i32.or
                i32.store offset=4
                br 3 (;@3;)
              end
              i32.const 0
              local.set 6
            end
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                local.get 3
                i32.load offset=28
                local.tee 4
                i32.const 2
                i32.shl
                i32.const 5756
                i32.add
                local.tee 0
                i32.load
                i32.ne
                br_if 0 (;@6;)
                local.get 0
                local.get 6
                i32.store
                local.get 6
                br_if 1 (;@5;)
                i32.const 0
                i32.const 0
                i32.load offset=5456
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=5456
                br 2 (;@4;)
              end
              local.get 7
              i32.const 16
              i32.const 20
              local.get 7
              i32.load offset=16
              local.get 3
              i32.eq
              select
              i32.add
              local.get 6
              i32.store
              local.get 6
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 6
            local.get 7
            i32.store offset=24
            block  ;; label = @5
              local.get 3
              i32.load offset=16
              local.tee 0
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 0
              i32.store offset=16
              local.get 0
              local.get 6
              i32.store offset=24
            end
            local.get 3
            i32.const 20
            i32.add
            i32.load
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.const 20
            i32.add
            local.get 0
            i32.store
            local.get 0
            local.get 6
            i32.store offset=24
          end
          local.get 1
          local.get 2
          i32.add
          local.get 2
          i32.store
          local.get 1
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 1
          i32.const 0
          i32.load offset=5472
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          local.get 2
          i32.store offset=5460
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 2
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const -8
          i32.and
          i32.const 5492
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=5452
              local.tee 4
              i32.const 1
              local.get 2
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 2
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 4
              local.get 2
              i32.or
              i32.store offset=5452
              local.get 0
              local.set 2
              br 1 (;@4;)
            end
            local.get 0
            i32.load offset=8
            local.set 2
          end
          local.get 2
          local.get 1
          i32.store offset=12
          local.get 0
          local.get 1
          i32.store offset=8
          local.get 1
          local.get 0
          i32.store offset=12
          local.get 1
          local.get 2
          i32.store offset=8
          br 1 (;@2;)
        end
        i32.const 31
        local.set 0
        block  ;; label = @3
          local.get 2
          i32.const 16777215
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 38
          local.get 2
          i32.const 8
          i32.shr_u
          i32.clz
          local.tee 0
          i32.sub
          i32.shr_u
          i32.const 1
          i32.and
          local.get 0
          i32.const 1
          i32.shl
          i32.sub
          i32.const 62
          i32.add
          local.set 0
        end
        local.get 1
        local.get 0
        i32.store offset=28
        local.get 1
        i64.const 0
        i64.store offset=16 align=4
        local.get 0
        i32.const 2
        i32.shl
        i32.const 5756
        i32.add
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=5456
            local.tee 6
            i32.const 1
            local.get 0
            i32.shl
            local.tee 3
            i32.and
            br_if 0 (;@4;)
            local.get 4
            local.get 1
            i32.store
            i32.const 0
            local.get 6
            local.get 3
            i32.or
            i32.store offset=5456
            local.get 1
            local.get 4
            i32.store offset=24
            local.get 1
            local.get 1
            i32.store offset=8
            local.get 1
            local.get 1
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 2
          i32.const 0
          i32.const 25
          local.get 0
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 0
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 0
          local.get 4
          i32.load
          local.set 6
          block  ;; label = @4
            loop  ;; label = @5
              local.get 6
              local.tee 4
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 2
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              i32.const 29
              i32.shr_u
              local.set 6
              local.get 0
              i32.const 1
              i32.shl
              local.set 0
              local.get 4
              local.get 6
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 3
              i32.load
              local.tee 6
              br_if 0 (;@5;)
            end
            local.get 3
            local.get 1
            i32.store
            local.get 1
            local.get 4
            i32.store offset=24
            local.get 1
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 1
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 4
          i32.load offset=8
          local.tee 2
          local.get 1
          i32.store offset=12
          local.get 4
          local.get 1
          i32.store offset=8
          local.get 1
          i32.const 0
          i32.store offset=24
          local.get 1
          local.get 4
          i32.store offset=12
          local.get 1
          local.get 2
          i32.store offset=8
        end
        i32.const 0
        i32.const 0
        i32.load offset=5484
        i32.const -1
        i32.add
        local.tee 2
        i32.const -1
        local.get 2
        select
        i32.store offset=5484
      end
      i32.const 0
      i32.load8_u offset=5896
      i32.const 2
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.atomic.store offset=5900
    end)
  (func $calloc (type 4) (param i32 i32) (result i32)
    (local i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i64.extend_i32_u
      local.get 1
      i64.extend_i32_u
      i64.mul
      local.tee 3
      i32.wrap_i64
      local.set 2
      local.get 1
      local.get 0
      i32.or
      i32.const 65536
      i32.lt_u
      br_if 0 (;@1;)
      i32.const -1
      local.get 2
      local.get 3
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.const 0
      i32.ne
      select
      local.set 2
    end
    block  ;; label = @1
      local.get 2
      call $dlmalloc
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 2
      memory.fill
    end
    local.get 0)
  (func $_Exit (type 3) (param i32)
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $__main_void (type 8) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 8
              i32.add
              local.get 0
              i32.const 12
              i32.add
              call $__wasi_args_sizes_get
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=8
              i32.const 1
              i32.add
              local.tee 1
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.load offset=12
              call $malloc
              local.tee 2
              i32.eqz
              br_if 2 (;@3;)
              local.get 1
              i32.const 4
              call $calloc
              local.tee 1
              i32.eqz
              br_if 3 (;@2;)
              local.get 1
              local.get 2
              call $__wasi_args_get
              br_if 4 (;@1;)
              local.get 0
              i32.load offset=8
              local.get 1
              call $main
              local.set 1
              local.get 0
              i32.const 16
              i32.add
              global.set $__stack_pointer
              local.get 1
              return
            end
            i32.const 71
            call $_Exit
            unreachable
          end
          i32.const 70
          call $_Exit
          unreachable
        end
        i32.const 70
        call $_Exit
        unreachable
      end
      local.get 2
      call $free
      i32.const 70
      call $_Exit
      unreachable
    end
    local.get 2
    call $free
    local.get 1
    call $free
    i32.const 71
    call $_Exit
    unreachable)
  (func $__wasi_args_get (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_args_get
    i32.const 65535
    i32.and)
  (func $__wasi_args_sizes_get (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_args_sizes_get
    i32.const 65535
    i32.and)
  (func $__wasi_clock_time_get (type 5) (param i32 i64 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $__imported_wasi_snapshot_preview1_clock_time_get
    i32.const 65535
    i32.and)
  (func $__wasi_fd_close (type 2) (param i32) (result i32)
    local.get 0
    call $__imported_wasi_snapshot_preview1_fd_close
    i32.const 65535
    i32.and)
  (func $__wasi_fd_fdstat_get (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_fd_fdstat_get
    i32.const 65535
    i32.and)
  (func $__wasi_fd_seek (type 6) (param i32 i64 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__imported_wasi_snapshot_preview1_fd_seek
    i32.const 65535
    i32.and)
  (func $__wasi_fd_write (type 7) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__imported_wasi_snapshot_preview1_fd_write
    i32.const 65535
    i32.and)
  (func $__wasi_poll_oneoff (type 7) (param i32 i32 i32 i32) (result i32)
    i32.const 1422
    call $puts
    drop
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__imported_wasi_snapshot_preview1_poll_oneoff
    i32.const 65535
    i32.and)
  (func $__wasi_proc_exit (type 3) (param i32)
    local.get 0
    call $__imported_wasi_snapshot_preview1_proc_exit
    unreachable)
  (func $__wasi_sched_yield (type 8) (result i32)
    call $__imported_wasi_snapshot_preview1_sched_yield
    i32.const 65535
    i32.and)
  (func $__wasi_thread_spawn (type 2) (param i32) (result i32)
    local.get 0
    call $__imported_wasi_thread_spawn)
  (func $abort (type 9)
    unreachable
    unreachable)
  (func $sbrk (type 2) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      memory.size
      i32.const 16
      i32.shl
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 0
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        global.get $__tls_base
        i32.const 0
        i32.add
        i32.const 48
        i32.store
        i32.const -1
        return
      end
      local.get 0
      i32.const 16
      i32.shl
      return
    end
    call $abort
    unreachable)
  (func $__wasi_init_tp (type 9)
    (local i32 i32)
    global.get $__tls_base
    i32.const 4
    i32.add
    local.tee 0
    local.get 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        i32.const 72608
        i32.eqz
        br_if 0 (;@2;)
        i32.const 72608
        i32.const 7072
        i32.sub
        local.set 1
        br 1 (;@1;)
      end
      global.get $__stack_pointer
      local.set 1
      i32.const 72608
      i32.const 7060
      i32.sub
      i32.const 1024
      local.get 1
      i32.const 1024
      i32.gt_u
      select
      local.set 1
    end
    local.get 0
    i32.const 2
    i32.store offset=28
    local.get 0
    i32.const 5948
    i32.store offset=92
    local.get 0
    i32.const 1073741823
    i32.store offset=20
    local.get 0
    local.get 0
    i32.const 72
    i32.add
    i32.store offset=72
    local.get 0
    i32.const 0
    i32.load offset=5936
    i32.store offset=12
    i32.const 0
    local.get 1
    i32.const 8388608
    local.get 1
    i32.const 8388608
    i32.lt_s
    select
    i32.store offset=5204
    local.get 0
    local.get 0
    i32.store offset=8
    local.get 0
    local.get 0
    i32.store offset=4)
  (func $__copy_tls (type 2) (param i32) (result i32)
    (local i32 i32)
    global.get $__tls_align
    local.set 1
    global.get $__tls_base
    local.set 2
    local.get 0
    local.get 1
    i32.add
    i32.const 0
    local.get 1
    i32.sub
    i32.and
    local.tee 1
    call $__wasm_init_tls
    local.get 2
    global.set $__tls_base
    local.get 1)
  (func $strerror (type 2) (param i32) (result i32)
    i32.const 0
    local.get 0
    local.get 0
    i32.const 76
    i32.gt_u
    select
    i32.const 1
    i32.shl
    i32.const 4272
    i32.add
    i32.load16_u
    i32.const 2720
    i32.add
    global.get $__tls_base
    i32.const 4
    i32.add
    i32.load offset=92
    i32.load offset=20
    call $__lctrans)
  (func $dummy (type 9))
  (func $__wasm_call_dtors (type 9)
    call $dummy
    call $__stdio_exit)
  (func $exit (type 3) (param i32)
    call $dummy
    call $__stdio_exit
    local.get 0
    call $_Exit
    unreachable)
  (func $dummy.1 (type 4) (param i32 i32) (result i32)
    local.get 0)
  (func $__lctrans (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $dummy.1)
  (func $rand_r (type 2) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load
    i32.const 1103515245
    i32.mul
    i32.const 12345
    i32.add
    local.tee 1
    i32.store
    local.get 1
    i32.const 11
    i32.shr_u
    local.get 1
    i32.xor
    local.tee 0
    i32.const 7
    i32.shl
    i32.const -1658038656
    i32.and
    local.get 0
    i32.xor
    local.tee 0
    i32.const 15
    i32.shl
    i32.const -272236544
    i32.and
    local.get 0
    i32.xor
    local.tee 0
    i32.const 19
    i32.shr_u
    local.get 0
    i32.const 1
    i32.shr_u
    i32.xor)
  (func $__lockfile (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      local.get 0
      i32.load offset=68
      i32.const -1073741825
      i32.and
      global.get $__tls_base
      i32.const 4
      i32.add
      i32.load offset=20
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      i32.const 1
      local.set 1
      local.get 0
      i32.const 68
      i32.add
      local.tee 3
      i32.const 0
      local.get 2
      i32.atomic.rmw.cmpxchg
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 0
      local.get 2
      i32.const 1073741824
      i32.or
      local.tee 2
      i32.atomic.rmw.cmpxchg
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.const 1073741824
        i32.or
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 1073741824
            i32.and
            br_if 0 (;@4;)
            local.get 3
            local.get 0
            local.get 1
            i32.atomic.rmw.cmpxchg
            local.get 0
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 3
          i32.const 0
          local.get 1
          i32.const 1
          call $__wait
        end
        local.get 3
        i32.const 0
        local.get 2
        i32.atomic.rmw.cmpxchg
        local.tee 0
        br_if 0 (;@2;)
      end
      i32.const 1
      local.set 1
    end
    local.get 1)
  (func $__unlockfile (type 3) (param i32)
    (local i32)
    local.get 0
    i32.const 68
    i32.add
    local.set 0
    loop  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      local.get 0
      local.get 1
      i32.const 0
      i32.atomic.rmw.cmpxchg
      i32.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 1
      i32.const 1073741824
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      memory.atomic.notify
      drop
    end)
  (func $fflush (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      block  ;; label = @2
        i32.const 0
        i32.load offset=5200
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=5200
        call $fflush
        local.set 1
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=5064
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=5064
        call $fflush
        local.get 1
        i32.or
        local.set 1
      end
      block  ;; label = @2
        call $__ofl_lock
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          i32.const 0
          local.set 2
          block  ;; label = @4
            local.get 0
            i32.load offset=68
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 0
            call $__lockfile
            local.set 2
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=24
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            call $fflush
            local.get 1
            i32.or
            local.set 1
          end
          block  ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            call $__unlockfile
          end
          local.get 0
          i32.load offset=52
          local.tee 0
          br_if 0 (;@3;)
        end
      end
      call $__ofl_unlock
      local.get 1
      return
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load offset=68
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      call $__lockfile
      local.set 2
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=20
          local.get 0
          i32.load offset=24
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          i32.const 0
          i32.const 0
          local.get 0
          i32.load offset=32
          call_indirect (type 0)
          drop
          local.get 0
          i32.load offset=20
          br_if 0 (;@3;)
          i32.const -1
          local.set 1
          local.get 2
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 1
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 3
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get 0
          i32.load offset=36
          call_indirect (type 1)
          drop
        end
        i32.const 0
        local.set 1
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 0
        i64.const 0
        i64.store offset=16
        local.get 0
        i64.const 0
        i64.store offset=4 align=4
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      call $__unlockfile
    end
    local.get 1)
  (func $fprintf (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 1
    local.get 2
    call $vfprintf
    local.set 2
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $__ofl_lock (type 8) (result i32)
    i32.const 5972
    call $__lock
    i32.const 5976)
  (func $__ofl_unlock (type 9)
    i32.const 5972
    call $__unlock)
  (func $printf (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=12
    i32.const 5072
    local.get 0
    local.get 1
    call $vfprintf
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $__stdio_exit (type 9)
    (local i32 i32 i32)
    block  ;; label = @1
      call $__ofl_lock
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=68
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 0
          call $__lockfile
          drop
        end
        block  ;; label = @3
          local.get 0
          i32.load offset=20
          local.get 0
          i32.load offset=24
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          i32.const 0
          i32.const 0
          local.get 0
          i32.load offset=32
          call_indirect (type 0)
          drop
        end
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 1
          local.get 0
          i32.load offset=8
          local.tee 2
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 2
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get 0
          i32.load offset=36
          call_indirect (type 1)
          drop
        end
        local.get 0
        i32.load offset=52
        local.tee 0
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=5980
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=68
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        call $__lockfile
        drop
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 1)
      drop
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=5200
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=68
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        call $__lockfile
        drop
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 1)
      drop
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=5064
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=68
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        call $__lockfile
        drop
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.get 0
        i32.load offset=24
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
      end
      local.get 0
      i32.load offset=4
      local.tee 1
      local.get 0
      i32.load offset=8
      local.tee 2
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i64.extend_i32_s
      i32.const 1
      local.get 0
      i32.load offset=36
      call_indirect (type 1)
      drop
    end)
  (func $__towrite (type 2) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load offset=64
    local.tee 1
    i32.const -1
    i32.add
    local.get 1
    i32.or
    i32.store offset=64
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const 8
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=40
    local.tee 1
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=44
    i32.add
    i32.store offset=16
    i32.const 0)
  (func $__fwritex (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        local.get 2
        call $__towrite
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
        local.set 3
      end
      block  ;; label = @2
        local.get 3
        local.get 2
        i32.load offset=20
        local.tee 5
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=32
        call_indirect (type 0)
        return
      end
      i32.const 0
      local.set 6
      block  ;; label = @2
        local.get 2
        i32.load offset=72
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 0
        local.set 6
        local.get 0
        local.set 4
        i32.const 0
        local.set 3
        loop  ;; label = @3
          local.get 1
          local.get 3
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 4
          i32.const -1
          i32.add
          local.tee 4
          local.get 1
          i32.add
          local.tee 7
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        local.get 1
        local.get 3
        i32.sub
        i32.const 1
        i32.add
        local.tee 6
        local.get 2
        i32.load offset=32
        call_indirect (type 0)
        local.tee 4
        local.get 6
        i32.lt_u
        br_if 1 (;@1;)
        local.get 3
        i32.const -1
        i32.add
        local.set 1
        local.get 7
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.load offset=20
        local.set 5
      end
      local.get 5
      local.get 0
      local.get 1
      memory.copy
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
      local.get 6
      local.get 1
      i32.add
      local.set 4
    end
    local.get 4)
  (func $fwrite (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=68
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      call $__lockfile
      i32.eqz
      local.set 4
    end
    local.get 2
    local.get 1
    i32.mul
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=16
        local.tee 6
        br_if 0 (;@2;)
        i32.const 0
        local.set 7
        local.get 3
        call $__towrite
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=16
        local.set 6
      end
      block  ;; label = @2
        local.get 6
        local.get 3
        i32.load offset=20
        local.tee 8
        i32.sub
        local.get 5
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        local.get 5
        local.get 3
        i32.load offset=32
        call_indirect (type 0)
        local.set 7
        br 1 (;@1;)
      end
      i32.const 0
      local.set 9
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load offset=72
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          local.get 5
          local.set 6
          br 1 (;@2;)
        end
        local.get 0
        local.get 5
        i32.add
        local.set 7
        i32.const 0
        local.set 9
        i32.const 0
        local.set 6
        loop  ;; label = @3
          block  ;; label = @4
            local.get 5
            local.get 6
            i32.add
            br_if 0 (;@4;)
            local.get 5
            local.set 6
            br 2 (;@2;)
          end
          local.get 6
          i32.const -1
          i32.add
          local.tee 6
          local.get 7
          i32.add
          local.tee 10
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 3
        local.get 0
        local.get 5
        local.get 6
        i32.add
        i32.const 1
        i32.add
        local.tee 9
        local.get 3
        i32.load offset=32
        call_indirect (type 0)
        local.tee 7
        local.get 9
        i32.lt_u
        br_if 1 (;@1;)
        local.get 6
        i32.const -1
        i32.xor
        local.set 6
        local.get 10
        i32.const 1
        i32.add
        local.set 0
        local.get 3
        i32.load offset=20
        local.set 8
      end
      local.get 8
      local.get 0
      local.get 6
      memory.copy
      local.get 3
      local.get 3
      i32.load offset=20
      local.get 6
      i32.add
      i32.store offset=20
      local.get 9
      local.get 6
      i32.add
      local.set 7
    end
    block  ;; label = @1
      local.get 4
      br_if 0 (;@1;)
      local.get 3
      call $__unlockfile
    end
    block  ;; label = @1
      local.get 7
      local.get 5
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      local.get 1
      select
      return
    end
    local.get 7
    local.get 1
    i32.div_u)
  (func $fputs (type 4) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    call $strlen
    local.set 2
    i32.const -1
    i32.const 0
    local.get 2
    local.get 0
    i32.const 1
    local.get 2
    local.get 1
    call $fwrite
    i32.ne
    select)
  (func $__overflow (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store8 offset=15
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=16
        local.tee 3
        br_if 0 (;@2;)
        i32.const -1
        local.set 3
        local.get 0
        call $__towrite
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=16
        local.set 3
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=20
        local.tee 4
        local.get 3
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=72
        local.get 1
        i32.const 255
        i32.and
        local.tee 3
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.const 1
        i32.add
        i32.store offset=20
        local.get 4
        local.get 1
        i32.store8
        br 1 (;@1;)
      end
      i32.const -1
      local.set 3
      local.get 0
      local.get 2
      i32.const 15
      i32.add
      i32.const 1
      local.get 0
      i32.load offset=32
      call_indirect (type 0)
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 2
      i32.load8_u offset=15
      local.set 3
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $puts (type 2) (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 1
    block  ;; label = @1
      i32.const 0
      i32.load offset=5140
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      i32.const 5072
      call $__lockfile
      local.set 1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 5072
        call $fputs
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const -1
        local.set 0
        br 1 (;@1;)
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=5144
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=5092
        local.tee 2
        i32.const 0
        i32.load offset=5088
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        local.set 0
        i32.const 0
        local.get 2
        i32.const 1
        i32.add
        i32.store offset=5092
        local.get 2
        i32.const 10
        i32.store8
        br 1 (;@1;)
      end
      i32.const 5072
      i32.const 10
      call $__overflow
      i32.const 31
      i32.shr_s
      local.set 0
    end
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5072
      call $__unlockfile
    end
    local.get 0)
  (func $__wasilibc_populate_preopens (type 9))
  (func $close (type 2) (param i32) (result i32)
    call $__wasilibc_populate_preopens
    block  ;; label = @1
      local.get 0
      call $__wasi_fd_close
      local.tee 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    global.get $__tls_base
    i32.const 0
    i32.add
    local.get 0
    i32.store
    i32.const -1)
  (func $dummy.2 (type 2) (param i32) (result i32)
    local.get 0)
  (func $__stdio_close (type 2) (param i32) (result i32)
    local.get 0
    i32.load offset=56
    call $dummy.2
    call $close)
  (func $writev (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const -1
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        global.get $__tls_base
        i32.const 0
        i32.add
        i32.const 28
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        local.get 3
        i32.const 12
        i32.add
        call $__wasi_fd_write
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        global.get $__tls_base
        i32.const 0
        i32.add
        local.get 2
        i32.store
        i32.const -1
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=12
      local.set 4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $__stdio_write (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 0
    i32.load offset=24
    local.tee 1
    i32.store
    local.get 3
    local.get 0
    i32.load offset=20
    local.get 1
    i32.sub
    local.tee 4
    i32.store offset=4
    i32.const 2
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=56
        local.get 3
        i32.const 2
        call $writev
        local.tee 1
        local.get 4
        local.get 2
        i32.add
        local.tee 6
        i32.eq
        br_if 0 (;@2;)
        local.get 3
        local.set 4
        loop  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const -1
            i32.gt_s
            br_if 0 (;@4;)
            i32.const 0
            local.set 1
            local.get 0
            i32.const 0
            i32.store offset=24
            local.get 0
            i64.const 0
            i64.store offset=16
            local.get 0
            local.get 0
            i32.load
            i32.const 32
            i32.or
            i32.store
            local.get 5
            i32.const 2
            i32.eq
            br_if 3 (;@1;)
            local.get 2
            local.get 4
            i32.load offset=4
            i32.sub
            local.set 1
            br 3 (;@1;)
          end
          local.get 4
          local.get 1
          local.get 4
          i32.load offset=4
          local.tee 7
          i32.gt_u
          local.tee 8
          i32.const 3
          i32.shl
          i32.add
          local.tee 9
          local.get 9
          i32.load
          local.get 1
          local.get 7
          i32.const 0
          local.get 8
          select
          i32.sub
          local.tee 7
          i32.add
          i32.store
          local.get 4
          i32.const 12
          i32.const 4
          local.get 8
          select
          i32.add
          local.tee 4
          local.get 4
          i32.load
          local.get 7
          i32.sub
          i32.store
          local.get 9
          local.set 4
          local.get 6
          local.get 1
          i32.sub
          local.tee 6
          local.get 0
          i32.load offset=56
          local.get 9
          local.get 5
          local.get 8
          i32.sub
          local.tee 5
          call $writev
          local.tee 1
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 0
      i32.load offset=40
      local.tee 1
      i32.store offset=24
      local.get 0
      local.get 1
      i32.store offset=20
      local.get 0
      local.get 1
      local.get 0
      i32.load offset=44
      i32.add
      i32.store offset=16
      local.get 2
      local.set 1
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $__lseek (type 1) (param i32 i64 i32) (result i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        local.get 2
        i32.const 255
        i32.and
        local.get 3
        i32.const 8
        i32.add
        call $__wasi_fd_seek
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        global.get $__tls_base
        i32.const 0
        i32.add
        i32.const 70
        local.get 2
        local.get 2
        i32.const 76
        i32.eq
        select
        i32.store
        i64.const -1
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i64.load offset=8
      local.set 1
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $__stdio_seek (type 1) (param i32 i64 i32) (result i64)
    local.get 0
    i32.load offset=56
    local.get 1
    local.get 2
    call $__lseek)
  (func $__isatty (type 2) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        i32.const 8
        i32.add
        call $__wasi_fd_fdstat_get
        local.tee 0
        br_if 0 (;@2;)
        i32.const 59
        local.set 0
        local.get 1
        i32.load8_u offset=8
        i32.const 2
        i32.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u offset=16
        i32.const 36
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 0
        br 1 (;@1;)
      end
      global.get $__tls_base
      i32.const 0
      i32.add
      local.get 0
      i32.store
      i32.const 0
      local.set 0
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $__stdout_write (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 5
    i32.store offset=32
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 64
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=56
      call $__isatty
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.store offset=72
    end
    local.get 0
    local.get 1
    local.get 2
    call $__stdio_write)
  (func $wcrtomb (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.const 127
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        i32.store8
        i32.const 1
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          global.get $__tls_base
          i32.const 4
          i32.add
          i32.load offset=92
          i32.load
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if 0 (;@4;)
            global.get $__tls_base
            i32.const 0
            i32.add
            i32.const 25
            i32.store
            br 2 (;@2;)
          end
          local.get 0
          local.get 1
          i32.store8
          i32.const 1
          return
        end
        block  ;; label = @3
          local.get 1
          i32.const 2047
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          local.get 0
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 192
          i32.or
          i32.store8
          i32.const 2
          return
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 55296
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const -8192
            i32.and
            i32.const 57344
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get 0
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8
          local.get 0
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          i32.const 3
          return
        end
        block  ;; label = @3
          local.get 1
          i32.const -65536
          i32.add
          i32.const 1048575
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=3
          local.get 0
          local.get 1
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8
          local.get 0
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get 0
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          i32.const 4
          return
        end
        global.get $__tls_base
        i32.const 0
        i32.add
        i32.const 25
        i32.store
      end
      i32.const -1
      local.set 3
    end
    local.get 3)
  (func $wctomb (type 4) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 1
    i32.const 0
    call $wcrtomb)
  (func $frexp (type 12) (param f64 i32) (result f64)
    (local i64 i32)
    block  ;; label = @1
      local.get 0
      i64.reinterpret_f64
      local.tee 2
      i64.const 52
      i64.shr_u
      i32.wrap_i64
      i32.const 2047
      i32.and
      local.tee 3
      i32.const 2047
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if 0 (;@3;)
          local.get 1
          i32.const 0
          i32.store
          local.get 0
          return
        end
        local.get 0
        f64.const 0x1p+64 (;=1.84467e+19;)
        f64.mul
        local.get 1
        call $frexp
        local.set 0
        local.get 1
        local.get 1
        i32.load
        i32.const -64
        i32.add
        i32.store
        local.get 0
        return
      end
      local.get 1
      local.get 3
      i32.const -1022
      i32.add
      i32.store
      local.get 2
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
      local.set 0
    end
    local.get 0)
  (func $vfprintf (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 208
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 2
    i32.store offset=204
    local.get 3
    i32.const 192
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 184
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i32.const 176
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=168
    local.get 3
    i64.const 0
    i64.store offset=160
    local.get 3
    local.get 2
    i32.store offset=200
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        local.get 1
        local.get 3
        i32.const 200
        i32.add
        local.get 3
        i32.const 80
        i32.add
        local.get 3
        i32.const 160
        i32.add
        call $printf_core
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const -1
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=68
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        call $__lockfile
        local.set 4
      end
      local.get 0
      i32.load
      local.set 5
      block  ;; label = @2
        local.get 0
        i32.load offset=64
        i32.const 0
        i32.gt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 5
        i32.const -33
        i32.and
        i32.store
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=44
              br_if 0 (;@5;)
              local.get 0
              i32.const 80
              i32.store offset=44
              local.get 0
              i32.const 0
              i32.store offset=24
              local.get 0
              i64.const 0
              i64.store offset=16
              local.get 0
              i32.load offset=40
              local.set 6
              local.get 0
              local.get 3
              i32.store offset=40
              br 1 (;@4;)
            end
            i32.const 0
            local.set 6
            local.get 0
            i32.load offset=16
            br_if 1 (;@3;)
          end
          i32.const -1
          local.set 2
          local.get 0
          call $__towrite
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 1
        local.get 3
        i32.const 200
        i32.add
        local.get 3
        i32.const 80
        i32.add
        local.get 3
        i32.const 160
        i32.add
        call $printf_core
        local.set 2
      end
      local.get 5
      i32.const 32
      i32.and
      local.set 1
      block  ;; label = @2
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=32
        call_indirect (type 0)
        drop
        local.get 0
        i32.const 0
        i32.store offset=44
        local.get 0
        local.get 6
        i32.store offset=40
        local.get 0
        i32.const 0
        i32.store offset=24
        local.get 0
        i32.load offset=20
        local.set 6
        local.get 0
        i64.const 0
        i64.store offset=16
        local.get 2
        i32.const -1
        local.get 6
        select
        local.set 2
      end
      local.get 0
      local.get 0
      i32.load
      local.tee 6
      local.get 1
      i32.or
      i32.store
      i32.const -1
      local.get 2
      local.get 6
      i32.const 32
      i32.and
      select
      local.set 2
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call $__unlockfile
    end
    local.get 3
    i32.const 208
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $printf_core (type 13) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 f64 i32 i32 i32 i32 i32 i32 i32 i32 f64)
    global.get $__stack_pointer
    i32.const 880
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    global.get $__tls_base
    i32.const 0
    i32.add
    local.set 6
    local.get 5
    i32.const 68
    i32.add
    i32.const 12
    i32.add
    local.set 7
    i32.const 0
    local.get 5
    i32.const 112
    i32.add
    i32.sub
    local.set 8
    local.get 5
    i32.const -3988
    i32.add
    local.set 9
    local.get 5
    i32.const 55
    i32.add
    local.set 10
    local.get 5
    i32.const 68
    i32.add
    i32.const 11
    i32.add
    local.set 11
    local.get 5
    i32.const 80
    i32.add
    i32.const -1
    i32.add
    local.set 12
    local.get 5
    i32.const 80
    i32.add
    i32.const 8
    i32.or
    local.set 13
    local.get 5
    i32.const 80
    i32.add
    i32.const 9
    i32.or
    local.set 14
    local.get 5
    i32.const 68
    i32.add
    i32.const 10
    i32.add
    local.set 15
    local.get 5
    i32.const 56
    i32.add
    local.set 16
    i32.const 0
    local.set 17
    i32.const 0
    local.set 18
    i32.const 0
    local.set 19
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            local.set 20
            local.get 19
            local.get 18
            i32.const 2147483647
            i32.xor
            i32.gt_s
            br_if 1 (;@3;)
            local.get 19
            local.get 18
            i32.add
            local.set 18
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 20
                              i32.load8_u
                              local.tee 19
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 20
                              local.set 1
                              loop  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 19
                                      i32.const 255
                                      i32.and
                                      local.tee 19
                                      i32.eqz
                                      br_if 0 (;@17;)
                                      local.get 19
                                      i32.const 37
                                      i32.ne
                                      br_if 2 (;@15;)
                                      local.get 1
                                      local.set 21
                                      local.get 1
                                      local.set 19
                                      loop  ;; label = @18
                                        block  ;; label = @19
                                          local.get 19
                                          i32.load8_u offset=1
                                          i32.const 37
                                          i32.eq
                                          br_if 0 (;@19;)
                                          local.get 19
                                          local.set 1
                                          br 3 (;@16;)
                                        end
                                        local.get 21
                                        i32.const 1
                                        i32.add
                                        local.set 21
                                        local.get 19
                                        i32.load8_u offset=2
                                        local.set 22
                                        local.get 19
                                        i32.const 2
                                        i32.add
                                        local.tee 1
                                        local.set 19
                                        local.get 22
                                        i32.const 37
                                        i32.eq
                                        br_if 0 (;@18;)
                                        br 2 (;@16;)
                                      end
                                    end
                                    local.get 1
                                    local.set 21
                                  end
                                  local.get 21
                                  local.get 20
                                  i32.sub
                                  local.tee 19
                                  local.get 18
                                  i32.const 2147483647
                                  i32.xor
                                  local.tee 21
                                  i32.gt_s
                                  br_if 12 (;@3;)
                                  block  ;; label = @16
                                    local.get 0
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 20
                                    local.get 19
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 19
                                  br_if 11 (;@4;)
                                  local.get 1
                                  i32.const 1
                                  i32.add
                                  local.set 19
                                  i32.const -1
                                  local.set 23
                                  block  ;; label = @16
                                    local.get 1
                                    i32.load8_s offset=1
                                    local.tee 24
                                    i32.const -48
                                    i32.add
                                    local.tee 22
                                    i32.const 9
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    local.get 1
                                    i32.load8_u offset=2
                                    i32.const 36
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 1
                                    i32.const 3
                                    i32.add
                                    local.set 19
                                    local.get 1
                                    i32.load8_s offset=3
                                    local.set 24
                                    i32.const 1
                                    local.set 17
                                    local.get 22
                                    local.set 23
                                  end
                                  i32.const 0
                                  local.set 25
                                  block  ;; label = @16
                                    local.get 24
                                    i32.const -32
                                    i32.add
                                    local.tee 1
                                    i32.const 31
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    i32.const 1
                                    local.get 1
                                    i32.shl
                                    local.tee 1
                                    i32.const 75913
                                    i32.and
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 19
                                    i32.const 1
                                    i32.add
                                    local.set 22
                                    i32.const 0
                                    local.set 25
                                    loop  ;; label = @17
                                      local.get 1
                                      local.get 25
                                      i32.or
                                      local.set 25
                                      local.get 22
                                      local.tee 19
                                      i32.load8_s
                                      local.tee 24
                                      i32.const -32
                                      i32.add
                                      local.tee 1
                                      i32.const 32
                                      i32.ge_u
                                      br_if 1 (;@16;)
                                      local.get 19
                                      i32.const 1
                                      i32.add
                                      local.set 22
                                      i32.const 1
                                      local.get 1
                                      i32.shl
                                      local.tee 1
                                      i32.const 75913
                                      i32.and
                                      br_if 0 (;@17;)
                                    end
                                  end
                                  block  ;; label = @16
                                    local.get 24
                                    i32.const 42
                                    i32.ne
                                    br_if 0 (;@16;)
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 19
                                        i32.load8_s offset=1
                                        i32.const -48
                                        i32.add
                                        local.tee 1
                                        i32.const 9
                                        i32.gt_u
                                        br_if 0 (;@18;)
                                        local.get 19
                                        i32.load8_u offset=2
                                        i32.const 36
                                        i32.ne
                                        br_if 0 (;@18;)
                                        local.get 4
                                        local.get 1
                                        i32.const 2
                                        i32.shl
                                        i32.add
                                        i32.const 10
                                        i32.store
                                        local.get 19
                                        i32.const 3
                                        i32.add
                                        local.set 22
                                        local.get 19
                                        i32.load8_s offset=1
                                        i32.const 3
                                        i32.shl
                                        local.get 3
                                        i32.add
                                        i32.const -384
                                        i32.add
                                        i32.load
                                        local.set 26
                                        i32.const 1
                                        local.set 17
                                        br 1 (;@17;)
                                      end
                                      local.get 17
                                      br_if 6 (;@11;)
                                      local.get 19
                                      i32.const 1
                                      i32.add
                                      local.set 22
                                      block  ;; label = @18
                                        local.get 0
                                        br_if 0 (;@18;)
                                        i32.const 0
                                        local.set 17
                                        i32.const 0
                                        local.set 26
                                        br 6 (;@12;)
                                      end
                                      local.get 2
                                      local.get 2
                                      i32.load
                                      local.tee 1
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get 1
                                      i32.load
                                      local.set 26
                                      i32.const 0
                                      local.set 17
                                    end
                                    local.get 26
                                    i32.const -1
                                    i32.gt_s
                                    br_if 4 (;@12;)
                                    i32.const 0
                                    local.get 26
                                    i32.sub
                                    local.set 26
                                    local.get 25
                                    i32.const 8192
                                    i32.or
                                    local.set 25
                                    br 4 (;@12;)
                                  end
                                  i32.const 0
                                  local.set 26
                                  block  ;; label = @16
                                    local.get 24
                                    i32.const -48
                                    i32.add
                                    local.tee 1
                                    i32.const 9
                                    i32.le_u
                                    br_if 0 (;@16;)
                                    local.get 19
                                    local.set 22
                                    br 4 (;@12;)
                                  end
                                  i32.const 0
                                  local.set 26
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 26
                                      i32.const 214748364
                                      i32.gt_u
                                      br_if 0 (;@17;)
                                      i32.const -1
                                      local.get 26
                                      i32.const 10
                                      i32.mul
                                      local.tee 22
                                      local.get 1
                                      i32.add
                                      local.get 1
                                      local.get 22
                                      i32.const 2147483647
                                      i32.xor
                                      i32.gt_u
                                      select
                                      local.set 26
                                      local.get 19
                                      i32.load8_s offset=1
                                      local.set 1
                                      local.get 19
                                      i32.const 1
                                      i32.add
                                      local.tee 22
                                      local.set 19
                                      local.get 1
                                      i32.const -48
                                      i32.add
                                      local.tee 1
                                      i32.const 10
                                      i32.lt_u
                                      br_if 1 (;@16;)
                                      local.get 26
                                      i32.const 0
                                      i32.lt_s
                                      br_if 14 (;@3;)
                                      br 5 (;@12;)
                                    end
                                    local.get 19
                                    i32.load8_s offset=1
                                    local.set 1
                                    i32.const -1
                                    local.set 26
                                    local.get 19
                                    i32.const 1
                                    i32.add
                                    local.set 19
                                    local.get 1
                                    i32.const -48
                                    i32.add
                                    local.tee 1
                                    i32.const 10
                                    i32.lt_u
                                    br_if 0 (;@16;)
                                    br 13 (;@3;)
                                  end
                                end
                                local.get 1
                                i32.load8_u offset=1
                                local.set 19
                                local.get 1
                                i32.const 1
                                i32.add
                                local.set 1
                                br 0 (;@14;)
                              end
                            end
                            local.get 0
                            br_if 11 (;@1;)
                            block  ;; label = @13
                              local.get 17
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 18
                              br 12 (;@1;)
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=4
                                  local.tee 1
                                  br_if 0 (;@15;)
                                  i32.const 1
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                local.get 3
                                i32.const 8
                                i32.add
                                local.get 1
                                local.get 2
                                call $pop_arg
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=8
                                  local.tee 1
                                  br_if 0 (;@15;)
                                  i32.const 2
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                local.get 3
                                i32.const 16
                                i32.add
                                local.get 1
                                local.get 2
                                call $pop_arg
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=12
                                  local.tee 1
                                  br_if 0 (;@15;)
                                  i32.const 3
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                local.get 3
                                i32.const 24
                                i32.add
                                local.get 1
                                local.get 2
                                call $pop_arg
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=16
                                  local.tee 1
                                  br_if 0 (;@15;)
                                  i32.const 4
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                local.get 3
                                i32.const 32
                                i32.add
                                local.get 1
                                local.get 2
                                call $pop_arg
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=20
                                  local.tee 1
                                  br_if 0 (;@15;)
                                  i32.const 5
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                local.get 3
                                i32.const 40
                                i32.add
                                local.get 1
                                local.get 2
                                call $pop_arg
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=24
                                  local.tee 1
                                  br_if 0 (;@15;)
                                  i32.const 6
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                local.get 3
                                i32.const 48
                                i32.add
                                local.get 1
                                local.get 2
                                call $pop_arg
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=28
                                  local.tee 1
                                  br_if 0 (;@15;)
                                  i32.const 7
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                local.get 3
                                i32.const 56
                                i32.add
                                local.get 1
                                local.get 2
                                call $pop_arg
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=32
                                  local.tee 1
                                  br_if 0 (;@15;)
                                  i32.const 8
                                  local.set 1
                                  br 1 (;@14;)
                                end
                                local.get 3
                                i32.const 64
                                i32.add
                                local.get 1
                                local.get 2
                                call $pop_arg
                                local.get 4
                                i32.load offset=36
                                local.tee 1
                                br_if 1 (;@13;)
                                i32.const 9
                                local.set 1
                              end
                              local.get 1
                              i32.const 2
                              i32.shl
                              local.set 1
                              loop  ;; label = @14
                                local.get 4
                                local.get 1
                                i32.add
                                i32.load
                                br_if 3 (;@11;)
                                local.get 1
                                i32.const 4
                                i32.add
                                local.tee 1
                                i32.const 40
                                i32.ne
                                br_if 0 (;@14;)
                              end
                              i32.const 1
                              local.set 18
                              br 12 (;@1;)
                            end
                            local.get 3
                            i32.const 72
                            i32.add
                            local.get 1
                            local.get 2
                            call $pop_arg
                            i32.const 1
                            local.set 18
                            br 11 (;@1;)
                          end
                          i32.const 0
                          local.set 19
                          i32.const -1
                          local.set 24
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 22
                              i32.load8_u
                              i32.const 46
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 22
                              local.set 1
                              i32.const 0
                              local.set 27
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 22
                              i32.load8_s offset=1
                              local.tee 24
                              i32.const 42
                              i32.ne
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 22
                                  i32.load8_s offset=2
                                  i32.const -48
                                  i32.add
                                  local.tee 1
                                  i32.const 9
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                  local.get 22
                                  i32.load8_u offset=3
                                  i32.const 36
                                  i32.ne
                                  br_if 0 (;@15;)
                                  local.get 4
                                  local.get 1
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  i32.const 10
                                  i32.store
                                  local.get 22
                                  i32.const 4
                                  i32.add
                                  local.set 1
                                  local.get 22
                                  i32.load8_s offset=2
                                  i32.const 3
                                  i32.shl
                                  local.get 3
                                  i32.add
                                  i32.const -384
                                  i32.add
                                  i32.load
                                  local.set 24
                                  br 1 (;@14;)
                                end
                                local.get 17
                                br_if 3 (;@11;)
                                local.get 22
                                i32.const 2
                                i32.add
                                local.set 1
                                block  ;; label = @15
                                  local.get 0
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 24
                                  br 1 (;@14;)
                                end
                                local.get 2
                                local.get 2
                                i32.load
                                local.tee 22
                                i32.const 4
                                i32.add
                                i32.store
                                local.get 22
                                i32.load
                                local.set 24
                              end
                              local.get 24
                              i32.const -1
                              i32.xor
                              i32.const 31
                              i32.shr_u
                              local.set 27
                              br 1 (;@12;)
                            end
                            local.get 22
                            i32.const 1
                            i32.add
                            local.set 1
                            block  ;; label = @13
                              local.get 24
                              i32.const -48
                              i32.add
                              local.tee 28
                              i32.const 9
                              i32.le_u
                              br_if 0 (;@13;)
                              i32.const 1
                              local.set 27
                              i32.const 0
                              local.set 24
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 29
                            local.get 1
                            local.set 22
                            loop  ;; label = @13
                              i32.const -1
                              local.set 24
                              block  ;; label = @14
                                local.get 29
                                i32.const 214748364
                                i32.gt_u
                                br_if 0 (;@14;)
                                i32.const -1
                                local.get 29
                                i32.const 10
                                i32.mul
                                local.tee 1
                                local.get 28
                                i32.add
                                local.get 28
                                local.get 1
                                i32.const 2147483647
                                i32.xor
                                i32.gt_u
                                select
                                local.set 24
                              end
                              i32.const 1
                              local.set 27
                              local.get 22
                              i32.load8_s offset=1
                              local.set 28
                              local.get 24
                              local.set 29
                              local.get 22
                              i32.const 1
                              i32.add
                              local.tee 1
                              local.set 22
                              local.get 28
                              i32.const -48
                              i32.add
                              local.tee 28
                              i32.const 10
                              i32.lt_u
                              br_if 0 (;@13;)
                            end
                          end
                          loop  ;; label = @12
                            local.get 19
                            local.set 22
                            local.get 1
                            i32.load8_s
                            local.tee 19
                            i32.const -123
                            i32.add
                            i32.const -58
                            i32.lt_u
                            br_if 1 (;@11;)
                            local.get 1
                            i32.const 1
                            i32.add
                            local.set 1
                            local.get 19
                            local.get 22
                            i32.const 58
                            i32.mul
                            i32.add
                            i32.const 4383
                            i32.add
                            i32.load8_u
                            local.tee 19
                            i32.const -1
                            i32.add
                            i32.const 8
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 19
                                i32.const 27
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 19
                                i32.eqz
                                br_if 3 (;@11;)
                                block  ;; label = @15
                                  local.get 23
                                  i32.const 0
                                  i32.lt_s
                                  br_if 0 (;@15;)
                                  local.get 4
                                  local.get 23
                                  i32.const 2
                                  i32.shl
                                  i32.add
                                  local.get 19
                                  i32.store
                                  local.get 5
                                  local.get 3
                                  local.get 23
                                  i32.const 3
                                  i32.shl
                                  i32.add
                                  i64.load
                                  i64.store offset=56
                                  br 2 (;@13;)
                                end
                                block  ;; label = @15
                                  local.get 0
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 18
                                  br 14 (;@1;)
                                end
                                local.get 5
                                i32.const 56
                                i32.add
                                local.get 19
                                local.get 2
                                call $pop_arg
                                br 2 (;@12;)
                              end
                              local.get 23
                              i32.const -1
                              i32.gt_s
                              br_if 2 (;@11;)
                            end
                            i32.const 0
                            local.set 19
                            local.get 0
                            i32.eqz
                            br_if 8 (;@4;)
                          end
                          local.get 25
                          i32.const -65537
                          i32.and
                          local.tee 29
                          local.get 25
                          local.get 25
                          i32.const 8192
                          i32.and
                          select
                          local.set 23
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            local.get 1
                                                            i32.const -1
                                                            i32.add
                                                            i32.load8_s
                                                            local.tee 19
                                                            i32.const -33
                                                            i32.and
                                                            local.get 19
                                                            local.get 19
                                                            i32.const 15
                                                            i32.and
                                                            i32.const 3
                                                            i32.eq
                                                            select
                                                            local.get 19
                                                            local.get 22
                                                            select
                                                            local.tee 30
                                                            i32.const -65
                                                            i32.add
                                                            br_table 16 (;@12;) 18 (;@10;) 13 (;@15;) 18 (;@10;) 16 (;@12;) 16 (;@12;) 16 (;@12;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 12 (;@16;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 3 (;@25;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 16 (;@12;) 18 (;@10;) 8 (;@20;) 5 (;@23;) 16 (;@12;) 16 (;@12;) 16 (;@12;) 18 (;@10;) 5 (;@23;) 18 (;@10;) 18 (;@10;) 18 (;@10;) 9 (;@19;) 1 (;@27;) 4 (;@24;) 2 (;@26;) 18 (;@10;) 18 (;@10;) 10 (;@18;) 18 (;@10;) 0 (;@28;) 18 (;@10;) 18 (;@10;) 3 (;@25;) 18 (;@10;)
                                                          end
                                                          i32.const 0
                                                          local.set 28
                                                          i32.const 1136
                                                          local.set 31
                                                          local.get 5
                                                          i64.load offset=56
                                                          local.set 32
                                                          br 5 (;@22;)
                                                        end
                                                        i32.const 0
                                                        local.set 19
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      local.get 22
                                                                      i32.const 255
                                                                      i32.and
                                                                      br_table 0 (;@33;) 1 (;@32;) 2 (;@31;) 3 (;@30;) 4 (;@29;) 29 (;@4;) 5 (;@28;) 6 (;@27;) 29 (;@4;)
                                                                    end
                                                                    local.get 5
                                                                    i32.load offset=56
                                                                    local.get 18
                                                                    i32.store
                                                                    br 28 (;@4;)
                                                                  end
                                                                  local.get 5
                                                                  i32.load offset=56
                                                                  local.get 18
                                                                  i32.store
                                                                  br 27 (;@4;)
                                                                end
                                                                local.get 5
                                                                i32.load offset=56
                                                                local.get 18
                                                                i64.extend_i32_s
                                                                i64.store
                                                                br 26 (;@4;)
                                                              end
                                                              local.get 5
                                                              i32.load offset=56
                                                              local.get 18
                                                              i32.store16
                                                              br 25 (;@4;)
                                                            end
                                                            local.get 5
                                                            i32.load offset=56
                                                            local.get 18
                                                            i32.store8
                                                            br 24 (;@4;)
                                                          end
                                                          local.get 5
                                                          i32.load offset=56
                                                          local.get 18
                                                          i32.store
                                                          br 23 (;@4;)
                                                        end
                                                        local.get 5
                                                        i32.load offset=56
                                                        local.get 18
                                                        i64.extend_i32_s
                                                        i64.store
                                                        br 22 (;@4;)
                                                      end
                                                      local.get 24
                                                      i32.const 8
                                                      local.get 24
                                                      i32.const 8
                                                      i32.gt_u
                                                      select
                                                      local.set 24
                                                      local.get 23
                                                      i32.const 8
                                                      i32.or
                                                      local.set 23
                                                      i32.const 120
                                                      local.set 30
                                                    end
                                                    i32.const 0
                                                    local.set 28
                                                    i32.const 1136
                                                    local.set 31
                                                    block  ;; label = @25
                                                      local.get 5
                                                      i64.load offset=56
                                                      local.tee 32
                                                      i64.eqz
                                                      i32.eqz
                                                      br_if 0 (;@25;)
                                                      local.get 16
                                                      local.set 20
                                                      br 4 (;@21;)
                                                    end
                                                    local.get 30
                                                    i32.const 32
                                                    i32.and
                                                    local.set 22
                                                    local.get 16
                                                    local.set 20
                                                    loop  ;; label = @25
                                                      local.get 20
                                                      i32.const -1
                                                      i32.add
                                                      local.tee 20
                                                      local.get 32
                                                      i32.wrap_i64
                                                      i32.const 15
                                                      i32.and
                                                      i32.const 4912
                                                      i32.add
                                                      i32.load8_u
                                                      local.get 22
                                                      i32.or
                                                      i32.store8
                                                      local.get 32
                                                      i64.const 15
                                                      i64.gt_u
                                                      local.set 19
                                                      local.get 32
                                                      i64.const 4
                                                      i64.shr_u
                                                      local.set 32
                                                      local.get 19
                                                      br_if 0 (;@25;)
                                                    end
                                                    local.get 23
                                                    i32.const 8
                                                    i32.and
                                                    i32.eqz
                                                    br_if 3 (;@21;)
                                                    local.get 30
                                                    i32.const 4
                                                    i32.shr_s
                                                    i32.const 1136
                                                    i32.add
                                                    local.set 31
                                                    i32.const 2
                                                    local.set 28
                                                    br 3 (;@21;)
                                                  end
                                                  local.get 16
                                                  local.set 20
                                                  block  ;; label = @24
                                                    local.get 5
                                                    i64.load offset=56
                                                    local.tee 32
                                                    i64.eqz
                                                    br_if 0 (;@24;)
                                                    local.get 16
                                                    local.set 20
                                                    loop  ;; label = @25
                                                      local.get 20
                                                      i32.const -1
                                                      i32.add
                                                      local.tee 20
                                                      local.get 32
                                                      i32.wrap_i64
                                                      i32.const 7
                                                      i32.and
                                                      i32.const 48
                                                      i32.or
                                                      i32.store8
                                                      local.get 32
                                                      i64.const 7
                                                      i64.gt_u
                                                      local.set 19
                                                      local.get 32
                                                      i64.const 3
                                                      i64.shr_u
                                                      local.set 32
                                                      local.get 19
                                                      br_if 0 (;@25;)
                                                    end
                                                  end
                                                  i32.const 0
                                                  local.set 28
                                                  i32.const 1136
                                                  local.set 31
                                                  local.get 23
                                                  i32.const 8
                                                  i32.and
                                                  i32.eqz
                                                  br_if 2 (;@21;)
                                                  local.get 24
                                                  local.get 16
                                                  local.get 20
                                                  i32.sub
                                                  local.tee 19
                                                  i32.const 1
                                                  i32.add
                                                  local.get 24
                                                  local.get 19
                                                  i32.gt_s
                                                  select
                                                  local.set 24
                                                  br 2 (;@21;)
                                                end
                                                block  ;; label = @23
                                                  local.get 5
                                                  i64.load offset=56
                                                  local.tee 32
                                                  i64.const -1
                                                  i64.gt_s
                                                  br_if 0 (;@23;)
                                                  local.get 5
                                                  i64.const 0
                                                  local.get 32
                                                  i64.sub
                                                  local.tee 32
                                                  i64.store offset=56
                                                  i32.const 1
                                                  local.set 28
                                                  i32.const 1136
                                                  local.set 31
                                                  br 1 (;@22;)
                                                end
                                                block  ;; label = @23
                                                  local.get 23
                                                  i32.const 2048
                                                  i32.and
                                                  i32.eqz
                                                  br_if 0 (;@23;)
                                                  i32.const 1
                                                  local.set 28
                                                  i32.const 1137
                                                  local.set 31
                                                  br 1 (;@22;)
                                                end
                                                i32.const 1138
                                                i32.const 1136
                                                local.get 23
                                                i32.const 1
                                                i32.and
                                                local.tee 28
                                                select
                                                local.set 31
                                              end
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  local.get 32
                                                  i64.const 4294967296
                                                  i64.ge_u
                                                  br_if 0 (;@23;)
                                                  local.get 32
                                                  local.set 33
                                                  local.get 16
                                                  local.set 20
                                                  br 1 (;@22;)
                                                end
                                                local.get 16
                                                local.set 20
                                                loop  ;; label = @23
                                                  local.get 20
                                                  i32.const -1
                                                  i32.add
                                                  local.tee 20
                                                  local.get 32
                                                  local.get 32
                                                  i64.const 10
                                                  i64.div_u
                                                  local.tee 33
                                                  i64.const 10
                                                  i64.mul
                                                  i64.sub
                                                  i32.wrap_i64
                                                  i32.const 48
                                                  i32.or
                                                  i32.store8
                                                  local.get 32
                                                  i64.const 42949672959
                                                  i64.gt_u
                                                  local.set 19
                                                  local.get 33
                                                  local.set 32
                                                  local.get 19
                                                  br_if 0 (;@23;)
                                                end
                                              end
                                              local.get 33
                                              i32.wrap_i64
                                              local.tee 19
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              loop  ;; label = @22
                                                local.get 20
                                                i32.const -1
                                                i32.add
                                                local.tee 20
                                                local.get 19
                                                local.get 19
                                                i32.const 10
                                                i32.div_u
                                                local.tee 22
                                                i32.const 10
                                                i32.mul
                                                i32.sub
                                                i32.const 48
                                                i32.or
                                                i32.store8
                                                local.get 19
                                                i32.const 9
                                                i32.gt_u
                                                local.set 25
                                                local.get 22
                                                local.set 19
                                                local.get 25
                                                br_if 0 (;@22;)
                                              end
                                            end
                                            block  ;; label = @21
                                              local.get 27
                                              i32.eqz
                                              br_if 0 (;@21;)
                                              local.get 24
                                              i32.const 0
                                              i32.lt_s
                                              br_if 18 (;@3;)
                                            end
                                            local.get 23
                                            i32.const -65537
                                            i32.and
                                            local.get 23
                                            local.get 27
                                            select
                                            local.set 29
                                            block  ;; label = @21
                                              local.get 5
                                              i64.load offset=56
                                              local.tee 32
                                              i64.const 0
                                              i64.ne
                                              br_if 0 (;@21;)
                                              i32.const 0
                                              local.set 25
                                              local.get 24
                                              br_if 0 (;@21;)
                                              local.get 16
                                              local.set 20
                                              local.get 16
                                              local.set 19
                                              br 12 (;@9;)
                                            end
                                            local.get 24
                                            local.get 16
                                            local.get 20
                                            i32.sub
                                            local.get 32
                                            i64.eqz
                                            i32.add
                                            local.tee 19
                                            local.get 24
                                            local.get 19
                                            i32.gt_s
                                            select
                                            local.set 25
                                            local.get 16
                                            local.set 19
                                            br 11 (;@9;)
                                          end
                                          local.get 5
                                          local.get 5
                                          i64.load offset=56
                                          i64.store8 offset=55
                                          i32.const 0
                                          local.set 28
                                          i32.const 1136
                                          local.set 31
                                          i32.const 1
                                          local.set 25
                                          local.get 10
                                          local.set 20
                                          local.get 16
                                          local.set 19
                                          br 10 (;@9;)
                                        end
                                        local.get 6
                                        i32.load
                                        call $strerror
                                        local.set 20
                                        br 1 (;@17;)
                                      end
                                      local.get 5
                                      i32.load offset=56
                                      local.tee 19
                                      i32.const 1380
                                      local.get 19
                                      select
                                      local.set 20
                                    end
                                    local.get 20
                                    local.get 20
                                    local.get 24
                                    i32.const 2147483647
                                    local.get 24
                                    i32.const 2147483647
                                    i32.lt_u
                                    select
                                    call $strnlen
                                    local.tee 25
                                    i32.add
                                    local.set 19
                                    i32.const 0
                                    local.set 28
                                    i32.const 1136
                                    local.set 31
                                    local.get 24
                                    i32.const -1
                                    i32.gt_s
                                    br_if 7 (;@9;)
                                    local.get 19
                                    i32.load8_u
                                    i32.eqz
                                    br_if 7 (;@9;)
                                    br 13 (;@3;)
                                  end
                                  local.get 5
                                  i32.load offset=56
                                  local.set 20
                                  local.get 24
                                  br_if 1 (;@14;)
                                  i32.const 0
                                  local.set 19
                                  br 2 (;@13;)
                                end
                                local.get 5
                                i32.const 0
                                i32.store offset=12
                                local.get 5
                                local.get 5
                                i64.load offset=56
                                i64.store32 offset=8
                                local.get 5
                                local.get 5
                                i32.const 8
                                i32.add
                                i32.store offset=56
                                local.get 5
                                i32.const 8
                                i32.add
                                local.set 20
                                i32.const -1
                                local.set 24
                              end
                              i32.const 0
                              local.set 19
                              local.get 20
                              local.set 21
                              block  ;; label = @14
                                loop  ;; label = @15
                                  local.get 21
                                  i32.load
                                  local.tee 22
                                  i32.eqz
                                  br_if 1 (;@14;)
                                  block  ;; label = @16
                                    local.get 5
                                    i32.const 4
                                    i32.add
                                    local.get 22
                                    call $wctomb
                                    local.tee 22
                                    i32.const 0
                                    i32.lt_s
                                    local.tee 25
                                    br_if 0 (;@16;)
                                    local.get 22
                                    local.get 24
                                    local.get 19
                                    i32.sub
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    local.get 21
                                    i32.const 4
                                    i32.add
                                    local.set 21
                                    local.get 22
                                    local.get 19
                                    i32.add
                                    local.tee 19
                                    local.get 24
                                    i32.lt_u
                                    br_if 1 (;@15;)
                                    br 2 (;@14;)
                                  end
                                end
                                local.get 25
                                br_if 12 (;@2;)
                              end
                              local.get 19
                              i32.const 0
                              i32.lt_s
                              br_if 10 (;@3;)
                            end
                            block  ;; label = @13
                              local.get 23
                              i32.const 73728
                              i32.and
                              local.tee 25
                              br_if 0 (;@13;)
                              local.get 26
                              local.get 19
                              i32.le_s
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 112
                              i32.add
                              i32.const 32
                              local.get 26
                              local.get 19
                              i32.sub
                              local.tee 21
                              i32.const 256
                              local.get 21
                              i32.const 256
                              i32.lt_u
                              local.tee 22
                              select
                              memory.fill
                              block  ;; label = @14
                                local.get 22
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 112
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 21
                                  i32.const -256
                                  i32.add
                                  local.tee 21
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 112
                              i32.add
                              local.get 21
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            block  ;; label = @13
                              local.get 19
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 21
                              loop  ;; label = @14
                                local.get 20
                                i32.load
                                local.tee 22
                                i32.eqz
                                br_if 1 (;@13;)
                                local.get 5
                                i32.const 4
                                i32.add
                                local.get 22
                                call $wctomb
                                local.tee 22
                                local.get 21
                                i32.add
                                local.tee 21
                                local.get 19
                                i32.gt_u
                                br_if 1 (;@13;)
                                block  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 4
                                  i32.add
                                  local.get 22
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                local.get 20
                                i32.const 4
                                i32.add
                                local.set 20
                                local.get 21
                                local.get 19
                                i32.lt_u
                                br_if 0 (;@14;)
                              end
                            end
                            block  ;; label = @13
                              local.get 25
                              i32.const 8192
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 26
                              local.get 19
                              i32.le_s
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 112
                              i32.add
                              i32.const 32
                              local.get 26
                              local.get 19
                              i32.sub
                              local.tee 21
                              i32.const 256
                              local.get 21
                              i32.const 256
                              i32.lt_u
                              local.tee 22
                              select
                              memory.fill
                              block  ;; label = @14
                                local.get 22
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 112
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 21
                                  i32.const -256
                                  i32.add
                                  local.tee 21
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 112
                              i32.add
                              local.get 21
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            local.get 26
                            local.get 19
                            local.get 26
                            local.get 19
                            i32.gt_s
                            select
                            local.set 19
                            br 8 (;@4;)
                          end
                          block  ;; label = @12
                            local.get 27
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 24
                            i32.const 0
                            i32.lt_s
                            br_if 9 (;@3;)
                          end
                          local.get 5
                          f64.load offset=56
                          local.set 34
                          local.get 5
                          i32.const 0
                          i32.store offset=108
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 34
                              i64.reinterpret_f64
                              i64.const -1
                              i64.gt_s
                              br_if 0 (;@13;)
                              local.get 34
                              f64.neg
                              local.set 34
                              i32.const 1
                              local.set 35
                              i32.const 0
                              local.set 36
                              i32.const 1146
                              local.set 37
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 23
                              i32.const 2048
                              i32.and
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 1
                              local.set 35
                              i32.const 0
                              local.set 36
                              i32.const 1149
                              local.set 37
                              br 1 (;@12;)
                            end
                            i32.const 1152
                            i32.const 1147
                            local.get 23
                            i32.const 1
                            i32.and
                            local.tee 35
                            select
                            local.set 37
                            local.get 35
                            i32.eqz
                            local.set 36
                          end
                          block  ;; label = @12
                            local.get 34
                            i64.reinterpret_f64
                            i64.const 9223372036854775807
                            i64.and
                            i64.const 9218868437227405312
                            i64.lt_s
                            br_if 0 (;@12;)
                            local.get 35
                            i32.const 3
                            i32.add
                            local.set 21
                            block  ;; label = @13
                              local.get 23
                              i32.const 8192
                              i32.and
                              br_if 0 (;@13;)
                              local.get 26
                              local.get 21
                              i32.le_s
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 624
                              i32.add
                              i32.const 32
                              local.get 26
                              local.get 21
                              i32.sub
                              local.tee 19
                              i32.const 256
                              local.get 19
                              i32.const 256
                              i32.lt_u
                              local.tee 22
                              select
                              memory.fill
                              block  ;; label = @14
                                local.get 22
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 624
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 19
                                  i32.const -256
                                  i32.add
                                  local.tee 19
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 624
                              i32.add
                              local.get 19
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            block  ;; label = @13
                              local.get 0
                              i32.load
                              local.tee 19
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 37
                              local.get 35
                              local.get 0
                              call $__fwritex
                              drop
                              local.get 0
                              i32.load
                              local.set 19
                            end
                            block  ;; label = @13
                              local.get 19
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              i32.const 1165
                              i32.const 1314
                              local.get 30
                              i32.const 32
                              i32.and
                              local.tee 19
                              select
                              i32.const 1297
                              i32.const 1318
                              local.get 19
                              select
                              local.get 34
                              local.get 34
                              f64.ne
                              select
                              i32.const 3
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            block  ;; label = @13
                              local.get 23
                              i32.const 73728
                              i32.and
                              i32.const 8192
                              i32.ne
                              br_if 0 (;@13;)
                              local.get 26
                              local.get 21
                              i32.le_s
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 624
                              i32.add
                              i32.const 32
                              local.get 26
                              local.get 21
                              i32.sub
                              local.tee 19
                              i32.const 256
                              local.get 19
                              i32.const 256
                              i32.lt_u
                              local.tee 22
                              select
                              memory.fill
                              block  ;; label = @14
                                local.get 22
                                br_if 0 (;@14;)
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 0
                                    i32.load8_u
                                    i32.const 32
                                    i32.and
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 624
                                    i32.add
                                    i32.const 256
                                    local.get 0
                                    call $__fwritex
                                    drop
                                  end
                                  local.get 19
                                  i32.const -256
                                  i32.add
                                  local.tee 19
                                  i32.const 255
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 5
                              i32.const 624
                              i32.add
                              local.get 19
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            local.get 21
                            local.get 26
                            local.get 21
                            local.get 26
                            i32.gt_s
                            select
                            local.set 19
                            br 8 (;@4;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 34
                                local.get 5
                                i32.const 108
                                i32.add
                                call $frexp
                                local.tee 34
                                local.get 34
                                f64.add
                                local.tee 34
                                f64.const 0x0p+0 (;=0;)
                                f64.eq
                                br_if 0 (;@14;)
                                local.get 5
                                local.get 5
                                i32.load offset=108
                                local.tee 19
                                i32.const -1
                                i32.add
                                i32.store offset=108
                                local.get 30
                                i32.const 32
                                i32.or
                                local.tee 38
                                i32.const 97
                                i32.ne
                                br_if 1 (;@13;)
                                br 8 (;@6;)
                              end
                              local.get 30
                              i32.const 32
                              i32.or
                              local.tee 38
                              i32.const 97
                              i32.eq
                              br_if 7 (;@6;)
                              i32.const 6
                              local.get 24
                              local.get 24
                              i32.const 0
                              i32.lt_s
                              select
                              local.set 27
                              local.get 5
                              i32.load offset=108
                              local.set 20
                              br 1 (;@12;)
                            end
                            local.get 5
                            local.get 19
                            i32.const -29
                            i32.add
                            local.tee 20
                            i32.store offset=108
                            i32.const 6
                            local.get 24
                            local.get 24
                            i32.const 0
                            i32.lt_s
                            select
                            local.set 27
                            local.get 34
                            f64.const 0x1p+28 (;=2.68435e+08;)
                            f64.mul
                            local.set 34
                          end
                          local.get 5
                          i32.const 112
                          i32.add
                          i32.const 0
                          i32.const 72
                          local.get 20
                          i32.const 0
                          i32.lt_s
                          local.tee 39
                          select
                          i32.const 2
                          i32.shl
                          local.tee 40
                          i32.add
                          local.tee 31
                          local.set 21
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 34
                                f64.const 0x1p+32 (;=4.29497e+09;)
                                f64.lt
                                local.get 34
                                f64.const 0x0p+0 (;=0;)
                                f64.ge
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 34
                                i32.trunc_f64_u
                                local.set 19
                                br 1 (;@13;)
                              end
                              i32.const 0
                              local.set 19
                            end
                            local.get 21
                            local.get 19
                            i32.store
                            local.get 21
                            i32.const 4
                            i32.add
                            local.set 21
                            local.get 34
                            local.get 19
                            f64.convert_i32_u
                            f64.sub
                            f64.const 0x1.dcd65p+29 (;=1e+09;)
                            f64.mul
                            local.tee 34
                            f64.const 0x0p+0 (;=0;)
                            f64.ne
                            br_if 0 (;@12;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 20
                              i32.const 1
                              i32.ge_s
                              br_if 0 (;@13;)
                              local.get 21
                              local.set 19
                              local.get 31
                              local.set 22
                              br 1 (;@12;)
                            end
                            local.get 31
                            local.set 22
                            loop  ;; label = @13
                              local.get 20
                              i32.const 29
                              local.get 20
                              i32.const 29
                              i32.lt_s
                              select
                              local.set 20
                              block  ;; label = @14
                                local.get 21
                                i32.const -4
                                i32.add
                                local.tee 19
                                local.get 22
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 20
                                i64.extend_i32_u
                                local.set 33
                                i64.const 0
                                local.set 32
                                loop  ;; label = @15
                                  local.get 19
                                  local.get 19
                                  i64.load32_u
                                  local.get 33
                                  i64.shl
                                  local.get 32
                                  i64.const 4294967295
                                  i64.and
                                  i64.add
                                  local.tee 32
                                  local.get 32
                                  i64.const 1000000000
                                  i64.div_u
                                  local.tee 32
                                  i64.const 1000000000
                                  i64.mul
                                  i64.sub
                                  i64.store32
                                  local.get 19
                                  i32.const -4
                                  i32.add
                                  local.tee 19
                                  local.get 22
                                  i32.ge_u
                                  br_if 0 (;@15;)
                                end
                                local.get 32
                                i32.wrap_i64
                                local.tee 19
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 22
                                i32.const -4
                                i32.add
                                local.tee 22
                                local.get 19
                                i32.store
                              end
                              block  ;; label = @14
                                loop  ;; label = @15
                                  local.get 21
                                  local.tee 19
                                  local.get 22
                                  i32.le_u
                                  br_if 1 (;@14;)
                                  local.get 19
                                  i32.const -4
                                  i32.add
                                  local.tee 21
                                  i32.load
                                  i32.eqz
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 5
                              local.get 5
                              i32.load offset=108
                              local.get 20
                              i32.sub
                              local.tee 20
                              i32.store offset=108
                              local.get 19
                              local.set 21
                              local.get 20
                              i32.const 0
                              i32.gt_s
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            local.get 20
                            i32.const -1
                            i32.gt_s
                            br_if 0 (;@12;)
                            local.get 27
                            i32.const 25
                            i32.add
                            i32.const 9
                            i32.div_u
                            i32.const 1
                            i32.add
                            local.set 41
                            loop  ;; label = @13
                              i32.const 0
                              local.get 20
                              i32.sub
                              local.tee 21
                              i32.const 9
                              local.get 21
                              i32.const 9
                              i32.lt_s
                              select
                              local.set 24
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 22
                                  local.get 19
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                  local.get 22
                                  i32.load
                                  local.set 21
                                  br 1 (;@14;)
                                end
                                i32.const 1000000000
                                local.get 24
                                i32.shr_u
                                local.set 29
                                i32.const -1
                                local.get 24
                                i32.shl
                                i32.const -1
                                i32.xor
                                local.set 28
                                i32.const 0
                                local.set 20
                                local.get 22
                                local.set 21
                                loop  ;; label = @15
                                  local.get 21
                                  local.get 21
                                  i32.load
                                  local.tee 25
                                  local.get 24
                                  i32.shr_u
                                  local.get 20
                                  i32.add
                                  i32.store
                                  local.get 25
                                  local.get 28
                                  i32.and
                                  local.get 29
                                  i32.mul
                                  local.set 20
                                  local.get 21
                                  i32.const 4
                                  i32.add
                                  local.tee 21
                                  local.get 19
                                  i32.lt_u
                                  br_if 0 (;@15;)
                                end
                                local.get 22
                                i32.load
                                local.set 21
                                local.get 20
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 19
                                local.get 20
                                i32.store
                                local.get 19
                                i32.const 4
                                i32.add
                                local.set 19
                              end
                              local.get 5
                              local.get 5
                              i32.load offset=108
                              local.get 24
                              i32.add
                              local.tee 20
                              i32.store offset=108
                              local.get 31
                              local.get 22
                              local.get 21
                              i32.eqz
                              i32.const 2
                              i32.shl
                              i32.add
                              local.tee 22
                              local.get 38
                              i32.const 102
                              i32.eq
                              select
                              local.tee 21
                              local.get 41
                              i32.const 2
                              i32.shl
                              i32.add
                              local.get 19
                              local.get 19
                              local.get 21
                              i32.sub
                              i32.const 2
                              i32.shr_s
                              local.get 41
                              i32.gt_s
                              select
                              local.set 19
                              local.get 20
                              i32.const 0
                              i32.lt_s
                              br_if 0 (;@13;)
                            end
                          end
                          i32.const 0
                          local.set 25
                          block  ;; label = @12
                            local.get 22
                            local.get 19
                            i32.ge_u
                            br_if 0 (;@12;)
                            local.get 31
                            local.get 22
                            i32.sub
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            local.set 25
                            local.get 22
                            i32.load
                            local.tee 20
                            i32.const 10
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 10
                            local.set 21
                            loop  ;; label = @13
                              local.get 25
                              i32.const 1
                              i32.add
                              local.set 25
                              local.get 20
                              local.get 21
                              i32.const 10
                              i32.mul
                              local.tee 21
                              i32.ge_u
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            local.get 27
                            i32.const 0
                            local.get 25
                            local.get 38
                            i32.const 102
                            i32.eq
                            select
                            i32.sub
                            local.get 27
                            i32.const 0
                            i32.ne
                            local.get 38
                            i32.const 103
                            i32.eq
                            local.tee 28
                            i32.and
                            i32.sub
                            local.tee 21
                            local.get 19
                            local.get 31
                            i32.sub
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            i32.const -9
                            i32.add
                            i32.ge_s
                            br_if 0 (;@12;)
                            local.get 21
                            i32.const 9216
                            i32.add
                            local.tee 20
                            i32.const 9
                            i32.div_s
                            local.tee 24
                            i32.const 2
                            i32.shl
                            local.tee 42
                            local.get 5
                            i32.const 112
                            i32.add
                            i32.const 1
                            i32.const 73
                            local.get 39
                            select
                            i32.const 2
                            i32.shl
                            local.tee 39
                            i32.add
                            i32.add
                            i32.const -4096
                            i32.add
                            local.set 29
                            i32.const 10
                            local.set 21
                            block  ;; label = @13
                              local.get 20
                              local.get 24
                              i32.const 9
                              i32.mul
                              i32.sub
                              local.tee 24
                              i32.const 7
                              i32.gt_s
                              br_if 0 (;@13;)
                              i32.const 8
                              local.get 24
                              i32.sub
                              local.tee 41
                              i32.const 7
                              i32.and
                              local.set 20
                              i32.const 10
                              local.set 21
                              block  ;; label = @14
                                local.get 24
                                i32.const -1
                                i32.add
                                i32.const 7
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 41
                                i32.const -8
                                i32.and
                                local.set 24
                                i32.const 10
                                local.set 21
                                loop  ;; label = @15
                                  local.get 21
                                  i32.const 100000000
                                  i32.mul
                                  local.set 21
                                  local.get 24
                                  i32.const -8
                                  i32.add
                                  local.tee 24
                                  br_if 0 (;@15;)
                                end
                              end
                              local.get 20
                              i32.eqz
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                local.get 21
                                i32.const 10
                                i32.mul
                                local.set 21
                                local.get 20
                                i32.const -1
                                i32.add
                                local.tee 20
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 29
                            i32.const 4
                            i32.add
                            local.set 41
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 29
                                i32.load
                                local.tee 20
                                local.get 20
                                local.get 21
                                i32.div_u
                                local.tee 38
                                local.get 21
                                i32.mul
                                i32.sub
                                local.tee 24
                                br_if 0 (;@14;)
                                local.get 41
                                local.get 19
                                i32.eq
                                br_if 1 (;@13;)
                              end
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 38
                                  i32.const 1
                                  i32.and
                                  br_if 0 (;@15;)
                                  f64.const 0x1p+53 (;=9.0072e+15;)
                                  local.set 34
                                  local.get 21
                                  i32.const 1000000000
                                  i32.ne
                                  br_if 1 (;@14;)
                                  local.get 29
                                  local.get 22
                                  i32.le_u
                                  br_if 1 (;@14;)
                                  local.get 29
                                  i32.const -4
                                  i32.add
                                  i32.load8_u
                                  i32.const 1
                                  i32.and
                                  i32.eqz
                                  br_if 1 (;@14;)
                                end
                                f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
                                local.set 34
                              end
                              f64.const 0x1p-1 (;=0.5;)
                              f64.const 0x1p+0 (;=1;)
                              f64.const 0x1.8p+0 (;=1.5;)
                              local.get 41
                              local.get 19
                              i32.eq
                              select
                              f64.const 0x1.8p+0 (;=1.5;)
                              local.get 24
                              local.get 21
                              i32.const 1
                              i32.shr_u
                              local.tee 41
                              i32.eq
                              select
                              local.get 24
                              local.get 41
                              i32.lt_u
                              select
                              local.set 43
                              block  ;; label = @14
                                local.get 36
                                br_if 0 (;@14;)
                                local.get 37
                                i32.load8_u
                                i32.const 45
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 43
                                f64.neg
                                local.set 43
                                local.get 34
                                f64.neg
                                local.set 34
                              end
                              local.get 29
                              local.get 20
                              local.get 24
                              i32.sub
                              local.tee 20
                              i32.store
                              local.get 34
                              local.get 43
                              f64.add
                              local.get 34
                              f64.eq
                              br_if 0 (;@13;)
                              local.get 29
                              local.get 20
                              local.get 21
                              i32.add
                              local.tee 21
                              i32.store
                              block  ;; label = @14
                                local.get 21
                                i32.const 1000000000
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 9
                                local.get 39
                                local.get 42
                                i32.add
                                i32.add
                                local.set 21
                                loop  ;; label = @15
                                  local.get 21
                                  i32.const 4
                                  i32.add
                                  i32.const 0
                                  i32.store
                                  block  ;; label = @16
                                    local.get 21
                                    local.get 22
                                    i32.ge_u
                                    br_if 0 (;@16;)
                                    local.get 22
                                    i32.const -4
                                    i32.add
                                    local.tee 22
                                    i32.const 0
                                    i32.store
                                  end
                                  local.get 21
                                  local.get 21
                                  i32.load
                                  i32.const 1
                                  i32.add
                                  local.tee 20
                                  i32.store
                                  local.get 21
                                  i32.const -4
                                  i32.add
                                  local.set 21
                                  local.get 20
                                  i32.const 999999999
                                  i32.gt_u
                                  br_if 0 (;@15;)
                                end
                                local.get 21
                                i32.const 4
                                i32.add
                                local.set 29
                              end
                              local.get 31
                              local.get 22
                              i32.sub
                              i32.const 2
                              i32.shr_s
                              i32.const 9
                              i32.mul
                              local.set 25
                              local.get 22
                              i32.load
                              local.tee 20
                              i32.const 10
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 10
                              local.set 21
                              loop  ;; label = @14
                                local.get 25
                                i32.const 1
                                i32.add
                                local.set 25
                                local.get 20
                                local.get 21
                                i32.const 10
                                i32.mul
                                local.tee 21
                                i32.ge_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 29
                            i32.const 4
                            i32.add
                            local.tee 21
                            local.get 19
                            local.get 19
                            local.get 21
                            i32.gt_u
                            select
                            local.set 19
                          end
                          local.get 8
                          local.get 19
                          i32.add
                          local.get 40
                          i32.sub
                          local.set 21
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 21
                              local.set 20
                              local.get 19
                              local.tee 29
                              local.get 22
                              i32.le_u
                              local.tee 24
                              br_if 1 (;@12;)
                              local.get 20
                              i32.const -4
                              i32.add
                              local.set 21
                              local.get 29
                              i32.const -4
                              i32.add
                              local.tee 19
                              i32.load
                              i32.eqz
                              br_if 0 (;@13;)
                            end
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 28
                              br_if 0 (;@13;)
                              local.get 23
                              i32.const 8
                              i32.and
                              local.set 41
                              br 1 (;@12;)
                            end
                            local.get 25
                            i32.const -1
                            i32.xor
                            i32.const -1
                            local.get 27
                            i32.const 1
                            local.get 27
                            select
                            local.tee 19
                            local.get 25
                            i32.gt_s
                            local.get 25
                            i32.const -5
                            i32.gt_s
                            i32.and
                            local.tee 21
                            select
                            local.get 19
                            i32.add
                            local.set 27
                            i32.const -1
                            i32.const -2
                            local.get 21
                            select
                            local.get 30
                            i32.add
                            local.set 30
                            local.get 23
                            i32.const 8
                            i32.and
                            local.tee 41
                            br_if 0 (;@12;)
                            i32.const -9
                            local.set 19
                            block  ;; label = @13
                              local.get 24
                              br_if 0 (;@13;)
                              local.get 29
                              i32.const -4
                              i32.add
                              i32.load
                              local.tee 24
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 19
                              local.get 24
                              i32.const 10
                              i32.rem_u
                              br_if 0 (;@13;)
                              i32.const 10
                              local.set 21
                              i32.const 0
                              local.set 19
                              loop  ;; label = @14
                                local.get 19
                                i32.const -1
                                i32.add
                                local.set 19
                                local.get 24
                                local.get 21
                                i32.const 10
                                i32.mul
                                local.tee 21
                                i32.rem_u
                                i32.eqz
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 20
                            i32.const 2
                            i32.shr_s
                            i32.const 9
                            i32.mul
                            local.set 21
                            block  ;; label = @13
                              local.get 30
                              i32.const -33
                              i32.and
                              i32.const 70
                              i32.ne
                              br_if 0 (;@13;)
                              i32.const 0
                              local.set 41
                              local.get 27
                              local.get 21
                              local.get 19
                              i32.add
                              i32.const -9
                              i32.add
                              local.tee 19
                              i32.const 0
                              local.get 19
                              i32.const 0
                              i32.gt_s
                              select
                              local.tee 19
                              local.get 27
                              local.get 19
                              i32.lt_s
                              select
                              local.set 27
                              br 1 (;@12;)
                            end
                            i32.const 0
                            local.set 41
                            local.get 27
                            local.get 25
                            local.get 21
                            i32.add
                            local.get 19
                            i32.add
                            i32.const -9
                            i32.add
                            local.tee 19
                            i32.const 0
                            local.get 19
                            i32.const 0
                            i32.gt_s
                            select
                            local.tee 19
                            local.get 27
                            local.get 19
                            i32.lt_s
                            select
                            local.set 27
                          end
                          local.get 27
                          i32.const 2147483645
                          i32.const 2147483646
                          local.get 27
                          local.get 41
                          i32.or
                          local.tee 36
                          select
                          i32.gt_s
                          br_if 8 (;@3;)
                          local.get 27
                          local.get 36
                          i32.const 0
                          i32.ne
                          i32.add
                          i32.const 1
                          i32.add
                          local.set 38
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 30
                              i32.const -33
                              i32.and
                              i32.const 70
                              i32.ne
                              local.tee 39
                              br_if 0 (;@13;)
                              local.get 25
                              local.get 38
                              i32.const 2147483647
                              i32.xor
                              i32.gt_s
                              br_if 10 (;@3;)
                              local.get 25
                              i32.const 0
                              local.get 25
                              i32.const 0
                              i32.gt_s
                              select
                              local.set 19
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 25
                                br_if 0 (;@14;)
                                local.get 7
                                local.set 20
                                local.get 7
                                local.set 21
                                br 1 (;@13;)
                              end
                              local.get 25
                              local.get 25
                              i32.const 31
                              i32.shr_s
                              local.tee 19
                              i32.xor
                              local.get 19
                              i32.sub
                              local.set 19
                              local.get 7
                              local.set 20
                              local.get 7
                              local.set 21
                              loop  ;; label = @14
                                local.get 21
                                i32.const -1
                                i32.add
                                local.tee 21
                                local.get 19
                                local.get 19
                                i32.const 10
                                i32.div_u
                                local.tee 24
                                i32.const 10
                                i32.mul
                                i32.sub
                                i32.const 48
                                i32.or
                                i32.store8
                                local.get 20
                                i32.const -1
                                i32.add
                                local.set 20
                                local.get 19
                                i32.const 9
                                i32.gt_u
                                local.set 28
                                local.get 24
                                local.set 19
                                local.get 28
                                br_if 0 (;@14;)
                              end
                            end
                            block  ;; label = @13
                              local.get 7
                              local.get 20
                              i32.sub
                              i32.const 1
                              i32.gt_s
                              br_if 0 (;@13;)
                              local.get 21
                              local.get 15
                              local.get 20
                              i32.sub
                              i32.add
                              local.tee 21
                              i32.const 48
                              local.get 20
                              local.get 5
                              i32.const 68
                              i32.add
                              i32.sub
                              i32.const -10
                              i32.add
                              memory.fill
                            end
                            local.get 21
                            i32.const -2
                            i32.add
                            local.tee 40
                            local.get 30
                            i32.store8
                            local.get 21
                            i32.const -1
                            i32.add
                            i32.const 45
                            i32.const 43
                            local.get 25
                            i32.const 0
                            i32.lt_s
                            select
                            i32.store8
                            local.get 7
                            local.get 40
                            i32.sub
                            local.tee 19
                            local.get 38
                            i32.const 2147483647
                            i32.xor
                            i32.gt_s
                            br_if 9 (;@3;)
                          end
                          local.get 19
                          local.get 38
                          i32.add
                          local.tee 19
                          local.get 35
                          i32.const 2147483647
                          i32.xor
                          i32.gt_s
                          br_if 8 (;@3;)
                          local.get 19
                          local.get 35
                          i32.add
                          local.set 28
                          block  ;; label = @12
                            local.get 23
                            i32.const 73728
                            i32.and
                            local.tee 23
                            br_if 0 (;@12;)
                            local.get 26
                            local.get 28
                            i32.le_s
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 624
                            i32.add
                            i32.const 32
                            local.get 26
                            local.get 28
                            i32.sub
                            local.tee 19
                            i32.const 256
                            local.get 19
                            i32.const 256
                            i32.lt_u
                            local.tee 21
                            select
                            memory.fill
                            block  ;; label = @13
                              local.get 21
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 624
                                  i32.add
                                  i32.const 256
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                local.get 19
                                i32.const -256
                                i32.add
                                local.tee 19
                                i32.const 255
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 624
                            i32.add
                            local.get 19
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          block  ;; label = @12
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 37
                            local.get 35
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          block  ;; label = @12
                            local.get 23
                            i32.const 65536
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 26
                            local.get 28
                            i32.le_s
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 624
                            i32.add
                            i32.const 48
                            local.get 26
                            local.get 28
                            i32.sub
                            local.tee 19
                            i32.const 256
                            local.get 19
                            i32.const 256
                            i32.lt_u
                            local.tee 21
                            select
                            memory.fill
                            block  ;; label = @13
                              local.get 21
                              br_if 0 (;@13;)
                              loop  ;; label = @14
                                block  ;; label = @15
                                  local.get 0
                                  i32.load8_u
                                  i32.const 32
                                  i32.and
                                  br_if 0 (;@15;)
                                  local.get 5
                                  i32.const 624
                                  i32.add
                                  i32.const 256
                                  local.get 0
                                  call $__fwritex
                                  drop
                                end
                                local.get 19
                                i32.const -256
                                i32.add
                                local.tee 19
                                i32.const 255
                                i32.gt_u
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 624
                            i32.add
                            local.get 19
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          local.get 39
                          br_if 3 (;@8;)
                          local.get 31
                          local.get 22
                          local.get 22
                          local.get 31
                          i32.gt_u
                          select
                          local.tee 25
                          local.set 24
                          loop  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 24
                                    i32.load
                                    local.tee 19
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    i32.const 8
                                    local.set 21
                                    loop  ;; label = @17
                                      local.get 5
                                      i32.const 80
                                      i32.add
                                      local.get 21
                                      i32.add
                                      local.get 19
                                      local.get 19
                                      i32.const 10
                                      i32.div_u
                                      local.tee 22
                                      i32.const 10
                                      i32.mul
                                      i32.sub
                                      i32.const 48
                                      i32.or
                                      i32.store8
                                      local.get 21
                                      i32.const -1
                                      i32.add
                                      local.set 21
                                      local.get 19
                                      i32.const 9
                                      i32.gt_u
                                      local.set 20
                                      local.get 22
                                      local.set 19
                                      local.get 20
                                      br_if 0 (;@17;)
                                    end
                                    local.get 21
                                    i32.const 1
                                    i32.add
                                    local.tee 22
                                    local.get 5
                                    i32.const 80
                                    i32.add
                                    i32.add
                                    local.set 19
                                    block  ;; label = @17
                                      local.get 24
                                      local.get 25
                                      i32.eq
                                      br_if 0 (;@17;)
                                      local.get 21
                                      i32.const 2
                                      i32.add
                                      i32.const 2
                                      i32.lt_s
                                      br_if 4 (;@13;)
                                      br 3 (;@14;)
                                    end
                                    local.get 21
                                    i32.const 8
                                    i32.ne
                                    br_if 3 (;@13;)
                                    br 1 (;@15;)
                                  end
                                  i32.const 9
                                  local.set 22
                                  local.get 24
                                  local.get 25
                                  i32.ne
                                  br_if 1 (;@14;)
                                end
                                local.get 5
                                i32.const 48
                                i32.store8 offset=88
                                local.get 13
                                local.set 19
                                br 1 (;@13;)
                              end
                              local.get 5
                              i32.const 80
                              i32.add
                              local.get 12
                              local.get 22
                              i32.add
                              local.tee 19
                              local.get 5
                              i32.const 80
                              i32.add
                              local.get 19
                              i32.lt_u
                              select
                              local.tee 19
                              i32.const 48
                              local.get 22
                              local.get 5
                              i32.const 80
                              i32.add
                              i32.add
                              local.get 19
                              i32.sub
                              memory.fill
                            end
                            block  ;; label = @13
                              local.get 0
                              i32.load8_u
                              i32.const 32
                              i32.and
                              br_if 0 (;@13;)
                              local.get 19
                              local.get 14
                              local.get 19
                              i32.sub
                              local.get 0
                              call $__fwritex
                              drop
                            end
                            local.get 24
                            i32.const 4
                            i32.add
                            local.tee 24
                            local.get 31
                            i32.le_u
                            br_if 0 (;@12;)
                          end
                          block  ;; label = @12
                            local.get 36
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            i32.const 1378
                            i32.const 1
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 27
                              i32.const 1
                              i32.ge_s
                              br_if 0 (;@13;)
                              local.get 27
                              local.set 19
                              br 1 (;@12;)
                            end
                            block  ;; label = @13
                              local.get 24
                              local.get 29
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 27
                              local.set 19
                              br 1 (;@12;)
                            end
                            loop  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 24
                                    i32.load
                                    local.tee 19
                                    br_if 0 (;@16;)
                                    local.get 14
                                    local.set 21
                                    local.get 14
                                    local.set 22
                                    br 1 (;@15;)
                                  end
                                  local.get 14
                                  local.set 22
                                  local.get 14
                                  local.set 21
                                  loop  ;; label = @16
                                    local.get 21
                                    i32.const -1
                                    i32.add
                                    local.tee 21
                                    local.get 19
                                    local.get 19
                                    i32.const 10
                                    i32.div_u
                                    local.tee 20
                                    i32.const 10
                                    i32.mul
                                    i32.sub
                                    i32.const 48
                                    i32.or
                                    i32.store8
                                    local.get 22
                                    i32.const -1
                                    i32.add
                                    local.set 22
                                    local.get 19
                                    i32.const 9
                                    i32.gt_u
                                    local.set 25
                                    local.get 20
                                    local.set 19
                                    local.get 25
                                    br_if 0 (;@16;)
                                  end
                                  local.get 21
                                  local.get 5
                                  i32.const 80
                                  i32.add
                                  i32.le_u
                                  br_if 1 (;@14;)
                                end
                                local.get 21
                                local.get 5
                                i32.const 80
                                i32.add
                                i32.add
                                local.get 22
                                i32.sub
                                local.tee 21
                                i32.const 48
                                local.get 22
                                local.get 5
                                i32.const 80
                                i32.add
                                i32.sub
                                memory.fill
                              end
                              block  ;; label = @14
                                local.get 0
                                i32.load8_u
                                i32.const 32
                                i32.and
                                br_if 0 (;@14;)
                                local.get 21
                                local.get 27
                                i32.const 9
                                local.get 27
                                i32.const 9
                                i32.lt_s
                                select
                                local.get 0
                                call $__fwritex
                                drop
                              end
                              local.get 27
                              i32.const -9
                              i32.add
                              local.set 19
                              local.get 24
                              i32.const 4
                              i32.add
                              local.tee 24
                              local.get 29
                              i32.ge_u
                              br_if 1 (;@12;)
                              local.get 27
                              i32.const 9
                              i32.gt_s
                              local.set 21
                              local.get 19
                              local.set 27
                              local.get 21
                              br_if 0 (;@13;)
                            end
                          end
                          local.get 0
                          i32.const 48
                          local.get 19
                          i32.const 9
                          i32.add
                          i32.const 9
                          i32.const 0
                          call $pad
                          br 4 (;@7;)
                        end
                        local.get 6
                        i32.const 28
                        i32.store
                        br 8 (;@2;)
                      end
                      i32.const 0
                      local.set 28
                      i32.const 1136
                      local.set 31
                      local.get 16
                      local.set 19
                      local.get 23
                      local.set 29
                      local.get 24
                      local.set 25
                    end
                    local.get 25
                    local.get 19
                    local.get 20
                    i32.sub
                    local.tee 24
                    local.get 25
                    local.get 24
                    i32.gt_s
                    select
                    local.tee 27
                    local.get 28
                    i32.const 2147483647
                    i32.xor
                    i32.gt_s
                    br_if 5 (;@3;)
                    local.get 26
                    local.get 28
                    local.get 27
                    i32.add
                    local.tee 22
                    local.get 26
                    local.get 22
                    i32.gt_s
                    select
                    local.tee 19
                    local.get 21
                    i32.gt_s
                    br_if 5 (;@3;)
                    block  ;; label = @9
                      local.get 29
                      i32.const 73728
                      i32.and
                      local.tee 29
                      br_if 0 (;@9;)
                      local.get 22
                      local.get 26
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      i32.const 32
                      local.get 19
                      local.get 22
                      i32.sub
                      local.tee 21
                      i32.const 256
                      local.get 21
                      i32.const 256
                      i32.lt_u
                      local.tee 23
                      select
                      memory.fill
                      block  ;; label = @10
                        local.get 23
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 112
                            i32.add
                            i32.const 256
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          local.get 21
                          i32.const -256
                          i32.add
                          local.tee 21
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      local.get 21
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 31
                      local.get 28
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    block  ;; label = @9
                      local.get 29
                      i32.const 65536
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 22
                      local.get 26
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      i32.const 48
                      local.get 19
                      local.get 22
                      i32.sub
                      local.tee 21
                      i32.const 256
                      local.get 21
                      i32.const 256
                      i32.lt_u
                      local.tee 28
                      select
                      memory.fill
                      block  ;; label = @10
                        local.get 28
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 112
                            i32.add
                            i32.const 256
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          local.get 21
                          i32.const -256
                          i32.add
                          local.tee 21
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      local.get 21
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    block  ;; label = @9
                      local.get 24
                      local.get 25
                      i32.ge_s
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      i32.const 48
                      local.get 27
                      local.get 24
                      i32.sub
                      local.tee 21
                      i32.const 256
                      local.get 21
                      i32.const 256
                      i32.lt_u
                      local.tee 25
                      select
                      memory.fill
                      block  ;; label = @10
                        local.get 25
                        br_if 0 (;@10;)
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 0
                            i32.load8_u
                            i32.const 32
                            i32.and
                            br_if 0 (;@12;)
                            local.get 5
                            i32.const 112
                            i32.add
                            i32.const 256
                            local.get 0
                            call $__fwritex
                            drop
                          end
                          local.get 21
                          i32.const -256
                          i32.add
                          local.tee 21
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 112
                      i32.add
                      local.get 21
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 20
                      local.get 24
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 29
                    i32.const 8192
                    i32.ne
                    br_if 4 (;@4;)
                    local.get 22
                    local.get 26
                    i32.ge_s
                    br_if 4 (;@4;)
                    local.get 5
                    i32.const 112
                    i32.add
                    i32.const 32
                    local.get 19
                    local.get 22
                    i32.sub
                    local.tee 21
                    i32.const 256
                    local.get 21
                    i32.const 256
                    i32.lt_u
                    local.tee 22
                    select
                    memory.fill
                    block  ;; label = @9
                      local.get 22
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 112
                          i32.add
                          i32.const 256
                          local.get 0
                          call $__fwritex
                          drop
                        end
                        local.get 21
                        i32.const -256
                        i32.add
                        local.tee 21
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    br_if 4 (;@4;)
                    local.get 5
                    i32.const 112
                    i32.add
                    local.get 21
                    local.get 0
                    call $__fwritex
                    drop
                    br 4 (;@4;)
                  end
                  block  ;; label = @8
                    local.get 27
                    i32.const 0
                    i32.lt_s
                    br_if 0 (;@8;)
                    local.get 29
                    local.get 22
                    i32.const 4
                    i32.add
                    local.get 29
                    local.get 22
                    i32.gt_u
                    select
                    local.set 29
                    local.get 22
                    local.set 24
                    loop  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 24
                          i32.load
                          local.tee 19
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 21
                          loop  ;; label = @12
                            local.get 5
                            i32.const 80
                            i32.add
                            local.get 21
                            i32.add
                            i32.const 8
                            i32.add
                            local.get 19
                            local.get 19
                            i32.const 10
                            i32.div_u
                            local.tee 20
                            i32.const 10
                            i32.mul
                            i32.sub
                            i32.const 48
                            i32.or
                            i32.store8
                            local.get 21
                            i32.const -1
                            i32.add
                            local.set 21
                            local.get 19
                            i32.const 9
                            i32.gt_u
                            local.set 25
                            local.get 20
                            local.set 19
                            local.get 25
                            br_if 0 (;@12;)
                          end
                          local.get 21
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 80
                          i32.add
                          local.get 21
                          i32.add
                          i32.const 9
                          i32.add
                          local.set 19
                          br 1 (;@10;)
                        end
                        local.get 5
                        i32.const 48
                        i32.store8 offset=88
                        local.get 13
                        local.set 19
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 24
                          local.get 22
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 19
                          local.get 5
                          i32.const 80
                          i32.add
                          i32.le_u
                          br_if 1 (;@10;)
                          local.get 5
                          i32.const 80
                          i32.add
                          i32.const 48
                          local.get 19
                          local.get 5
                          i32.const 80
                          i32.add
                          i32.sub
                          memory.fill
                          local.get 5
                          i32.const 80
                          i32.add
                          local.set 19
                          br 1 (;@10;)
                        end
                        block  ;; label = @11
                          local.get 0
                          i32.load8_u
                          i32.const 32
                          i32.and
                          br_if 0 (;@11;)
                          local.get 19
                          i32.const 1
                          local.get 0
                          call $__fwritex
                          drop
                        end
                        local.get 19
                        i32.const 1
                        i32.add
                        local.set 19
                        block  ;; label = @11
                          local.get 41
                          br_if 0 (;@11;)
                          local.get 27
                          i32.const 1
                          i32.lt_s
                          br_if 1 (;@10;)
                        end
                        local.get 0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 1378
                        i32.const 1
                        local.get 0
                        call $__fwritex
                        drop
                      end
                      local.get 14
                      local.get 19
                      i32.sub
                      local.set 21
                      block  ;; label = @10
                        local.get 0
                        i32.load8_u
                        i32.const 32
                        i32.and
                        br_if 0 (;@10;)
                        local.get 19
                        local.get 21
                        local.get 27
                        local.get 21
                        local.get 27
                        i32.lt_s
                        select
                        local.get 0
                        call $__fwritex
                        drop
                      end
                      local.get 27
                      local.get 21
                      i32.sub
                      local.set 27
                      local.get 24
                      i32.const 4
                      i32.add
                      local.tee 24
                      local.get 29
                      i32.ge_u
                      br_if 1 (;@8;)
                      local.get 27
                      i32.const -1
                      i32.gt_s
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 0
                  i32.const 48
                  local.get 27
                  i32.const 18
                  i32.add
                  i32.const 18
                  i32.const 0
                  call $pad
                  local.get 0
                  i32.load8_u
                  i32.const 32
                  i32.and
                  br_if 0 (;@7;)
                  local.get 40
                  local.get 7
                  local.get 40
                  i32.sub
                  local.get 0
                  call $__fwritex
                  drop
                end
                local.get 23
                i32.const 8192
                i32.ne
                br_if 1 (;@5;)
                local.get 26
                local.get 28
                i32.le_s
                br_if 1 (;@5;)
                local.get 5
                i32.const 624
                i32.add
                i32.const 32
                local.get 26
                local.get 28
                i32.sub
                local.tee 19
                i32.const 256
                local.get 19
                i32.const 256
                i32.lt_u
                local.tee 21
                select
                memory.fill
                block  ;; label = @7
                  local.get 21
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 19
                    i32.const -256
                    i32.add
                    local.tee 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 1 (;@5;)
                local.get 5
                i32.const 624
                i32.add
                local.get 19
                local.get 0
                call $__fwritex
                drop
                br 1 (;@5;)
              end
              local.get 37
              local.get 30
              i32.const 26
              i32.shl
              i32.const 31
              i32.shr_s
              i32.const 9
              i32.and
              i32.add
              local.set 31
              block  ;; label = @6
                local.get 24
                i32.const 11
                i32.gt_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 12
                    local.get 24
                    i32.sub
                    local.tee 19
                    i32.const 7
                    i32.and
                    local.tee 21
                    br_if 0 (;@8;)
                    f64.const 0x1p+4 (;=16;)
                    local.set 43
                    br 1 (;@7;)
                  end
                  local.get 24
                  i32.const -12
                  i32.add
                  local.set 19
                  f64.const 0x1p+4 (;=16;)
                  local.set 43
                  loop  ;; label = @8
                    local.get 19
                    i32.const 1
                    i32.add
                    local.set 19
                    local.get 43
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    local.set 43
                    local.get 21
                    i32.const -1
                    i32.add
                    local.tee 21
                    br_if 0 (;@8;)
                  end
                  i32.const 0
                  local.get 19
                  i32.sub
                  local.set 19
                end
                block  ;; label = @7
                  local.get 24
                  i32.const -5
                  i32.add
                  i32.const 7
                  i32.lt_u
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    local.get 43
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    f64.const 0x1p+4 (;=16;)
                    f64.mul
                    local.set 43
                    local.get 19
                    i32.const -8
                    i32.add
                    local.tee 19
                    br_if 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  local.get 31
                  i32.load8_u
                  i32.const 45
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 43
                  local.get 34
                  f64.neg
                  local.get 43
                  f64.sub
                  f64.add
                  f64.neg
                  local.set 34
                  br 1 (;@6;)
                end
                local.get 34
                local.get 43
                f64.add
                local.get 43
                f64.sub
                local.set 34
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.load offset=108
                  local.tee 25
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 25
                  local.get 25
                  i32.const 31
                  i32.shr_s
                  local.tee 19
                  i32.xor
                  local.get 19
                  i32.sub
                  local.set 19
                  i32.const 0
                  local.set 21
                  loop  ;; label = @8
                    local.get 5
                    i32.const 68
                    i32.add
                    local.get 21
                    i32.add
                    i32.const 11
                    i32.add
                    local.get 19
                    local.get 19
                    i32.const 10
                    i32.div_u
                    local.tee 22
                    i32.const 10
                    i32.mul
                    i32.sub
                    i32.const 48
                    i32.or
                    i32.store8
                    local.get 21
                    i32.const -1
                    i32.add
                    local.set 21
                    local.get 19
                    i32.const 9
                    i32.gt_u
                    local.set 20
                    local.get 22
                    local.set 19
                    local.get 20
                    br_if 0 (;@8;)
                  end
                  local.get 21
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 68
                  i32.add
                  local.get 21
                  i32.add
                  i32.const 12
                  i32.add
                  local.set 19
                  br 1 (;@6;)
                end
                local.get 5
                i32.const 48
                i32.store8 offset=79
                local.get 11
                local.set 19
              end
              local.get 35
              i32.const 2
              i32.or
              local.set 29
              local.get 30
              i32.const 32
              i32.and
              local.set 22
              local.get 19
              i32.const -2
              i32.add
              local.tee 27
              local.get 30
              i32.const 15
              i32.add
              i32.store8
              local.get 19
              i32.const -1
              i32.add
              i32.const 45
              i32.const 43
              local.get 25
              i32.const 0
              i32.lt_s
              select
              i32.store8
              local.get 23
              i32.const 8
              i32.and
              local.set 20
              local.get 5
              i32.const 80
              i32.add
              local.set 21
              loop  ;; label = @6
                local.get 21
                local.set 19
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 34
                    f64.abs
                    f64.const 0x1p+31 (;=2.14748e+09;)
                    f64.lt
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 34
                    i32.trunc_f64_s
                    local.set 21
                    br 1 (;@7;)
                  end
                  i32.const -2147483648
                  local.set 21
                end
                local.get 19
                local.get 21
                i32.const 4912
                i32.add
                i32.load8_u
                local.get 22
                i32.or
                i32.store8
                local.get 34
                local.get 21
                f64.convert_i32_s
                f64.sub
                f64.const 0x1p+4 (;=16;)
                f64.mul
                local.set 34
                block  ;; label = @7
                  local.get 19
                  i32.const 1
                  i32.add
                  local.tee 21
                  local.get 5
                  i32.const 80
                  i32.add
                  i32.sub
                  i32.const 1
                  i32.ne
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 20
                    br_if 0 (;@8;)
                    local.get 24
                    i32.const 0
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 34
                    f64.const 0x0p+0 (;=0;)
                    f64.eq
                    br_if 1 (;@7;)
                  end
                  local.get 19
                  i32.const 46
                  i32.store8 offset=1
                  local.get 19
                  i32.const 2
                  i32.add
                  local.set 21
                end
                local.get 34
                f64.const 0x0p+0 (;=0;)
                f64.ne
                br_if 0 (;@6;)
              end
              i32.const 2147483645
              local.get 7
              local.get 27
              i32.sub
              local.tee 25
              local.get 29
              i32.add
              local.tee 19
              i32.sub
              local.get 24
              i32.lt_s
              br_if 2 (;@3;)
              local.get 24
              i32.const 2
              i32.add
              local.get 21
              local.get 5
              i32.const 80
              i32.add
              i32.sub
              local.tee 21
              local.get 21
              i32.const -2
              i32.add
              local.get 24
              i32.lt_s
              select
              local.get 21
              local.get 24
              select
              local.tee 20
              local.get 19
              i32.add
              local.set 28
              block  ;; label = @6
                local.get 23
                i32.const 73728
                i32.and
                local.tee 22
                br_if 0 (;@6;)
                local.get 26
                local.get 28
                i32.le_s
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                i32.const 32
                local.get 26
                local.get 28
                i32.sub
                local.tee 19
                i32.const 256
                local.get 19
                i32.const 256
                i32.lt_u
                local.tee 24
                select
                memory.fill
                block  ;; label = @7
                  local.get 24
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 19
                    i32.const -256
                    i32.add
                    local.tee 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                local.get 19
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 31
                local.get 29
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 22
                i32.const 65536
                i32.ne
                br_if 0 (;@6;)
                local.get 26
                local.get 28
                i32.le_s
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                i32.const 48
                local.get 26
                local.get 28
                i32.sub
                local.tee 19
                i32.const 256
                local.get 19
                i32.const 256
                i32.lt_u
                local.tee 24
                select
                memory.fill
                block  ;; label = @7
                  local.get 24
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 19
                    i32.const -256
                    i32.add
                    local.tee 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                local.get 19
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.const 80
                i32.add
                local.get 21
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 20
                local.get 21
                i32.sub
                local.tee 19
                i32.const 1
                i32.lt_s
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                i32.const 48
                local.get 19
                i32.const 256
                local.get 19
                i32.const 256
                i32.lt_u
                local.tee 21
                select
                memory.fill
                block  ;; label = @7
                  local.get 21
                  br_if 0 (;@7;)
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load8_u
                      i32.const 32
                      i32.and
                      br_if 0 (;@9;)
                      local.get 5
                      i32.const 624
                      i32.add
                      i32.const 256
                      local.get 0
                      call $__fwritex
                      drop
                    end
                    local.get 19
                    i32.const -256
                    i32.add
                    local.tee 19
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                  end
                end
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.const 624
                i32.add
                local.get 19
                local.get 0
                call $__fwritex
                drop
              end
              block  ;; label = @6
                local.get 0
                i32.load8_u
                i32.const 32
                i32.and
                br_if 0 (;@6;)
                local.get 27
                local.get 25
                local.get 0
                call $__fwritex
                drop
              end
              local.get 22
              i32.const 8192
              i32.ne
              br_if 0 (;@5;)
              local.get 26
              local.get 28
              i32.le_s
              br_if 0 (;@5;)
              local.get 5
              i32.const 624
              i32.add
              i32.const 32
              local.get 26
              local.get 28
              i32.sub
              local.tee 19
              i32.const 256
              local.get 19
              i32.const 256
              i32.lt_u
              local.tee 21
              select
              memory.fill
              block  ;; label = @6
                local.get 21
                br_if 0 (;@6;)
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load8_u
                    i32.const 32
                    i32.and
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 624
                    i32.add
                    i32.const 256
                    local.get 0
                    call $__fwritex
                    drop
                  end
                  local.get 19
                  i32.const -256
                  i32.add
                  local.tee 19
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              i32.load8_u
              i32.const 32
              i32.and
              br_if 0 (;@5;)
              local.get 5
              i32.const 624
              i32.add
              local.get 19
              local.get 0
              call $__fwritex
              drop
            end
            local.get 28
            local.get 26
            local.get 28
            local.get 26
            i32.gt_s
            select
            local.tee 19
            i32.const 0
            i32.ge_s
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.const 61
        i32.store
      end
      i32.const -1
      local.set 18
    end
    local.get 5
    i32.const 880
    i32.add
    global.set $__stack_pointer
    local.get 18)
  (func $pop_arg (type 14) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          local.get 1
                                          i32.const -9
                                          i32.add
                                          br_table 17 (;@2;) 0 (;@19;) 1 (;@18;) 4 (;@15;) 2 (;@17;) 3 (;@16;) 5 (;@14;) 6 (;@13;) 7 (;@12;) 8 (;@11;) 9 (;@10;) 10 (;@9;) 11 (;@8;) 12 (;@7;) 13 (;@6;) 14 (;@5;) 15 (;@4;) 16 (;@3;) 18 (;@1;)
                                        end
                                        local.get 2
                                        local.get 2
                                        i32.load
                                        local.tee 1
                                        i32.const 4
                                        i32.add
                                        i32.store
                                        local.get 0
                                        local.get 1
                                        i64.load32_s
                                        i64.store
                                        return
                                      end
                                      local.get 2
                                      local.get 2
                                      i32.load
                                      local.tee 1
                                      i32.const 4
                                      i32.add
                                      i32.store
                                      local.get 0
                                      local.get 1
                                      i64.load32_u
                                      i64.store
                                      return
                                    end
                                    local.get 2
                                    local.get 2
                                    i32.load
                                    local.tee 1
                                    i32.const 4
                                    i32.add
                                    i32.store
                                    local.get 0
                                    local.get 1
                                    i64.load32_s
                                    i64.store
                                    return
                                  end
                                  local.get 2
                                  local.get 2
                                  i32.load
                                  local.tee 1
                                  i32.const 4
                                  i32.add
                                  i32.store
                                  local.get 0
                                  local.get 1
                                  i64.load32_u
                                  i64.store
                                  return
                                end
                                local.get 2
                                local.get 2
                                i32.load
                                i32.const 7
                                i32.add
                                i32.const -8
                                i32.and
                                local.tee 1
                                i32.const 8
                                i32.add
                                i32.store
                                local.get 0
                                local.get 1
                                i64.load
                                i64.store
                                return
                              end
                              local.get 2
                              local.get 2
                              i32.load
                              local.tee 1
                              i32.const 4
                              i32.add
                              i32.store
                              local.get 0
                              local.get 1
                              i64.load16_s
                              i64.store
                              return
                            end
                            local.get 2
                            local.get 2
                            i32.load
                            local.tee 1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get 0
                            local.get 1
                            i64.load16_u
                            i64.store
                            return
                          end
                          local.get 2
                          local.get 2
                          i32.load
                          local.tee 1
                          i32.const 4
                          i32.add
                          i32.store
                          local.get 0
                          local.get 1
                          i64.load8_s
                          i64.store
                          return
                        end
                        local.get 2
                        local.get 2
                        i32.load
                        local.tee 1
                        i32.const 4
                        i32.add
                        i32.store
                        local.get 0
                        local.get 1
                        i64.load8_u
                        i64.store
                        return
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      i32.const 7
                      i32.add
                      i32.const -8
                      i32.and
                      local.tee 1
                      i32.const 8
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i64.load
                      i64.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    local.tee 1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load32_u
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  i32.const 7
                  i32.add
                  i32.const -8
                  i32.and
                  local.tee 1
                  i32.const 8
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                i32.const 7
                i32.add
                i32.const -8
                i32.and
                local.tee 1
                i32.const 8
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load
                i64.store
                return
              end
              local.get 2
              local.get 2
              i32.load
              local.tee 1
              i32.const 4
              i32.add
              i32.store
              local.get 0
              local.get 1
              i64.load32_s
              i64.store
              return
            end
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.const 4
            i32.add
            i32.store
            local.get 0
            local.get 1
            i64.load32_u
            i64.store
            return
          end
          local.get 2
          local.get 2
          i32.load
          i32.const 7
          i32.add
          i32.const -8
          i32.and
          local.tee 1
          i32.const 8
          i32.add
          i32.store
          local.get 0
          local.get 1
          f64.load
          f64.store
          return
        end
        call $long_double_not_supported
        unreachable
      end
      local.get 2
      local.get 2
      i32.load
      local.tee 1
      i32.const 4
      i32.add
      i32.store
      local.get 0
      local.get 1
      i32.load
      i32.store
    end)
  (func $pad (type 15) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 256
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 4
      i32.const 73728
      i32.and
      br_if 0 (;@1;)
      local.get 5
      local.get 1
      local.get 2
      local.get 3
      i32.sub
      local.tee 3
      i32.const 256
      local.get 3
      i32.const 256
      i32.lt_u
      local.tee 2
      select
      memory.fill
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u
            i32.const 32
            i32.and
            br_if 0 (;@4;)
            local.get 5
            i32.const 256
            local.get 0
            call $__fwritex
            drop
          end
          local.get 3
          i32.const -256
          i32.add
          local.tee 3
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.load8_u
      i32.const 32
      i32.and
      br_if 0 (;@1;)
      local.get 5
      local.get 3
      local.get 0
      call $__fwritex
      drop
    end
    local.get 5
    i32.const 256
    i32.add
    global.set $__stack_pointer)
  (func $long_double_not_supported (type 9)
    i32.const 2320
    i32.const 4936
    call $fputs
    drop
    call $abort
    unreachable)
  (func $atoi (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32)
    loop  ;; label = @1
      local.get 0
      i32.load8_s
      local.tee 1
      i32.const -14
      i32.add
      local.set 2
      local.get 0
      i32.const 1
      i32.add
      local.tee 3
      local.set 0
      local.get 1
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 3
      local.set 0
      local.get 2
      i32.const -6
      i32.gt_u
      br_if 0 (;@1;)
    end
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const -43
            i32.add
            br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 0 (;@4;)
          end
          local.get 3
          i32.const -1
          i32.add
          local.set 3
          i32.const 0
          local.set 4
          br 2 (;@1;)
        end
        i32.const 1
        local.set 4
      end
      local.get 3
      i32.load8_s
      local.set 1
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const -48
      i32.add
      local.tee 1
      i32.const 9
      i32.gt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 1
      i32.add
      local.set 0
      i32.const 0
      local.set 2
      loop  ;; label = @2
        local.get 2
        i32.const 10
        i32.mul
        local.get 1
        i32.sub
        local.set 2
        local.get 0
        i32.load8_s
        local.set 1
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const -48
        i32.add
        local.tee 1
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 0
    local.get 2
    i32.sub
    local.get 4
    select)
  (func $strlen (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load8_u
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.sub
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 2
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 3
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const -4
      i32.add
      local.set 2
      local.get 1
      i32.const -5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        i32.load
        local.tee 3
        i32.const -1
        i32.xor
        local.get 3
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.load8_u
        local.set 3
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 3
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func $memchr (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 2
    i32.const 0
    i32.ne
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 0
              i32.load8_u
              local.get 1
              i32.const 255
              i32.and
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              local.set 4
              local.get 2
              local.set 5
              br 3 (;@2;)
            end
            local.get 2
            i32.const -1
            i32.add
            local.tee 5
            i32.const 0
            i32.ne
            local.set 3
            local.get 0
            i32.const 1
            i32.add
            local.tee 4
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load8_u
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const -2
            i32.add
            local.tee 5
            i32.const 0
            i32.ne
            local.set 3
            local.get 0
            i32.const 2
            i32.add
            local.tee 4
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load8_u
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 2 (;@2;)
            local.get 2
            i32.const -3
            i32.add
            local.tee 5
            i32.const 0
            i32.ne
            local.set 3
            local.get 0
            i32.const 3
            i32.add
            local.tee 4
            i32.const 3
            i32.and
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load8_u
            local.get 1
            i32.const 255
            i32.and
            i32.eq
            br_if 2 (;@2;)
            local.get 0
            i32.const 4
            i32.add
            local.set 4
            local.get 2
            i32.const -4
            i32.add
            local.tee 5
            i32.const 0
            i32.ne
            local.set 3
            br 1 (;@3;)
          end
          local.get 2
          local.set 5
          local.get 0
          local.set 4
        end
        local.get 3
        i32.eqz
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 4
          i32.load8_u
          local.get 1
          i32.const 255
          i32.and
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          i32.const 4
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 255
          i32.and
          i32.const 16843009
          i32.mul
          local.set 0
          loop  ;; label = @4
            local.get 4
            i32.load
            local.get 0
            i32.xor
            local.tee 2
            i32.const -1
            i32.xor
            local.get 2
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if 2 (;@2;)
            local.get 4
            i32.const 4
            i32.add
            local.set 4
            local.get 5
            i32.const -4
            i32.add
            local.tee 5
            i32.const 3
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        local.get 5
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 255
      i32.and
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.load8_u
          local.get 2
          i32.ne
          br_if 0 (;@3;)
          local.get 4
          return
        end
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        local.get 5
        i32.const -1
        i32.add
        local.tee 5
        br_if 0 (;@2;)
      end
    end
    i32.const 0)
  (func $strnlen (type 4) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.const 0
    local.get 1
    call $memchr
    local.tee 2
    local.get 0
    i32.sub
    local.get 1
    local.get 2
    select)
  (func $__lock (type 3) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      i32.const 0
      i32.load8_s offset=5941
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.const -2147483647
      i32.atomic.rmw.cmpxchg
      local.tee 2
      i32.eqz
      local.set 3
      block  ;; label = @2
        local.get 1
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store8 offset=5941
      end
      local.get 3
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 2147483647
      i32.add
      local.get 2
      local.get 2
      i32.const 0
      i32.lt_s
      select
      local.tee 1
      local.get 1
      i32.const -2147483647
      i32.add
      i32.atomic.rmw.cmpxchg
      local.tee 2
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 2147483647
      i32.add
      local.get 2
      local.get 2
      i32.const 0
      i32.lt_s
      select
      local.tee 1
      local.get 1
      i32.const -2147483647
      i32.add
      i32.atomic.rmw.cmpxchg
      local.tee 2
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 2147483647
      i32.add
      local.get 2
      local.get 2
      i32.const 0
      i32.lt_s
      select
      local.tee 1
      local.get 1
      i32.const -2147483647
      i32.add
      i32.atomic.rmw.cmpxchg
      local.tee 2
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 2147483647
      i32.add
      local.get 2
      local.get 2
      i32.const 0
      i32.lt_s
      select
      local.tee 1
      local.get 1
      i32.const -2147483647
      i32.add
      i32.atomic.rmw.cmpxchg
      local.tee 2
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 2147483647
      i32.add
      local.get 2
      local.get 2
      i32.const 0
      i32.lt_s
      select
      local.tee 1
      local.get 1
      i32.const -2147483647
      i32.add
      i32.atomic.rmw.cmpxchg
      local.tee 2
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 2147483647
      i32.add
      local.get 2
      local.get 2
      i32.const 0
      i32.lt_s
      select
      local.tee 1
      local.get 1
      i32.const -2147483647
      i32.add
      i32.atomic.rmw.cmpxchg
      local.tee 2
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 2147483647
      i32.add
      local.get 2
      local.get 2
      i32.const 0
      i32.lt_s
      select
      local.tee 1
      local.get 1
      i32.const -2147483647
      i32.add
      i32.atomic.rmw.cmpxchg
      local.tee 2
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 2147483647
      i32.add
      local.get 2
      local.get 2
      i32.const 0
      i32.lt_s
      select
      local.tee 1
      local.get 1
      i32.const -2147483647
      i32.add
      i32.atomic.rmw.cmpxchg
      local.tee 2
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 2147483647
      i32.add
      local.get 2
      local.get 2
      i32.const 0
      i32.lt_s
      select
      local.tee 1
      local.get 1
      i32.const -2147483647
      i32.add
      i32.atomic.rmw.cmpxchg
      local.tee 2
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.const 2147483647
      i32.add
      local.get 2
      local.get 2
      i32.const 0
      i32.lt_s
      select
      local.tee 1
      local.get 1
      i32.const -2147483647
      i32.add
      i32.atomic.rmw.cmpxchg
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        local.get 0
        local.get 2
        local.get 2
        i32.const 1
        i32.add
        local.tee 1
        i32.atomic.rmw.cmpxchg
        i32.ne
        br_if 0 (;@2;)
      end
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const -1
            i32.le_s
            br_if 0 (;@4;)
            local.get 1
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.const 0
          local.get 1
          i32.const 1
          call $__wait
          local.get 1
          i32.const 2147483647
          i32.add
          local.set 2
        end
        local.get 0
        local.get 2
        local.get 2
        i32.const -2147483648
        i32.or
        i32.atomic.rmw.cmpxchg
        local.tee 1
        local.get 2
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func $__unlock (type 3) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.const -1
      i32.gt_s
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.load
        local.tee 1
        local.get 0
        local.get 1
        local.get 1
        i32.const 2147483647
        i32.add
        i32.atomic.rmw.cmpxchg
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const -2147483647
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      memory.atomic.notify
      drop
    end)
  (func $__wasilibc_futex_wait (type 16) (param i32 i32 i32 i64) (result i32)
    (local i32)
    i32.const -28
    local.set 4
    block  ;; label = @1
      local.get 0
      i32.const 3
      i32.and
      br_if 0 (;@1;)
      i32.const -6
      i32.const -73
      i32.const 0
      local.get 0
      local.get 2
      local.get 3
      memory.atomic.wait32
      local.tee 0
      i32.const 2
      i32.eq
      select
      local.get 0
      i32.const 1
      i32.eq
      select
      local.set 4
    end
    local.get 4)
  (func $__wait (type 17) (param i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 4
    i32.const -100
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.load
              br_if 2 (;@3;)
            end
            local.get 0
            i32.load
            local.get 2
            i32.ne
            br_if 3 (;@1;)
            local.get 4
            i32.const 0
            i32.store offset=12
            local.get 4
            i32.const 0
            i32.const 0
            i32.atomic.rmw.cmpxchg offset=12
            drop
            block  ;; label = @5
              local.get 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.load
              br_if 2 (;@3;)
            end
            local.get 0
            i32.load
            local.get 2
            i32.ne
            br_if 3 (;@1;)
            local.get 4
            i32.const 0
            i32.store offset=12
            local.get 4
            i32.const 0
            i32.const 0
            i32.atomic.rmw.cmpxchg offset=12
            drop
            local.get 5
            i32.const 2
            i32.add
            local.tee 5
            br_if 0 (;@4;)
          end
          local.get 1
          br_if 0 (;@3;)
          i32.const 1
          local.set 5
          br 1 (;@2;)
        end
        loop  ;; label = @3
          local.get 1
          i32.load
          local.tee 4
          local.get 1
          local.get 4
          local.get 4
          i32.const 1
          i32.add
          i32.atomic.rmw.cmpxchg
          i32.ne
          br_if 0 (;@3;)
        end
        i32.const 0
        local.set 5
      end
      block  ;; label = @2
        local.get 0
        i32.load
        local.get 2
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 3
        i32.and
        local.set 4
        loop  ;; label = @3
          block  ;; label = @4
            local.get 4
            br_if 0 (;@4;)
            local.get 0
            local.get 2
            i64.const -1
            memory.atomic.wait32
            drop
          end
          local.get 0
          i32.load
          local.get 2
          i32.eq
          br_if 0 (;@3;)
        end
      end
      local.get 5
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.load
        local.tee 4
        local.get 1
        local.get 4
        local.get 4
        i32.const -1
        i32.add
        i32.atomic.rmw.cmpxchg
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func $dummy_0 (type 9))
  (func $__tl_unlock (type 9)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=7036
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.get 0
      i32.const -1
      i32.add
      i32.store offset=7036
      return
    end
    loop  ;; label = @1
      i32.const 0
      i32.load offset=5932
      local.tee 0
      i32.const 0
      local.get 0
      i32.const 0
      i32.atomic.rmw.cmpxchg offset=5932
      i32.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=7040
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 1
      memory.atomic.notify offset=5932
      drop
    end)
  (func $__tl_sync (type 3) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 1
    i32.const 0
    i32.const 0
    i32.atomic.rmw.cmpxchg offset=12
    drop
    block  ;; label = @1
      i32.const 0
      i32.load offset=5932
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 5932
      i32.const 7040
      local.get 2
      i32.const 0
      call $__wait
      i32.const 0
      i32.load offset=7040
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 1
      memory.atomic.notify offset=5932
      drop
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $__wasi_thread_start_C (type 10) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__tls_base
    i32.const 4
    i32.add
    local.tee 2
    local.get 0
    i32.atomic.store offset=20
    local.get 1
    i32.load offset=12
    local.get 1
    i32.load offset=8
    call_indirect (type 2)
    local.set 1
    local.get 2
    i32.const 1
    i32.store8 offset=36
    local.get 2
    local.get 1
    i32.store offset=60
    local.get 2
    i32.const 0
    i32.store8 offset=37
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.load offset=64
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 1
        i32.load offset=8
        i32.store offset=64
        local.get 1
        i32.load offset=4
        local.get 1
        i32.load
        call_indirect (type 3)
        br 0 (;@2;)
      end
    end
    call $dummy_0
    local.get 2
    i32.const 2
    i32.const 1
    i32.atomic.rmw.cmpxchg offset=28
    local.set 3
    local.get 2
    i32.const 96
    i32.add
    local.tee 4
    call $__lock
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load offset=20
        local.tee 0
        i32.const 0
        i32.load offset=5932
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        local.get 0
        i32.atomic.rmw.cmpxchg offset=5932
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        loop  ;; label = @3
          i32.const 5932
          i32.const 7040
          local.get 1
          i32.const 0
          call $__wait
          i32.const 0
          i32.const 0
          local.get 0
          i32.atomic.rmw.cmpxchg offset=5932
          local.tee 1
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      i32.const 0
      i32.load offset=7036
      i32.const 1
      i32.add
      i32.store offset=7036
    end
    local.get 2
    i32.const 28
    i32.add
    local.set 5
    block  ;; label = @1
      local.get 2
      i32.load offset=8
      local.get 2
      i32.eq
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.load offset=72
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        i32.const 72
        i32.add
        local.tee 6
        i32.eq
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 1
          i32.const -8
          i32.add
          i32.load
          local.set 7
          local.get 2
          local.get 1
          i32.store offset=80
          local.get 2
          local.get 1
          i32.load
          i32.store offset=72
          local.get 1
          i32.const -12
          i32.add
          local.set 1
          loop  ;; label = @4
            local.get 1
            i32.load
            local.tee 0
            local.get 1
            local.get 0
            i32.const 1073741824
            i32.atomic.rmw.cmpxchg
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 2
          i32.const 0
          i32.store offset=80
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 0
              i32.lt_s
              br_if 0 (;@5;)
              local.get 7
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 1
            i32.const 1
            memory.atomic.notify
            drop
          end
          local.get 6
          i32.load
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          local.get 6
          i32.ne
          br_if 0 (;@3;)
        end
      end
      call $dummy_0
      i32.const 0
      i32.const 0
      i32.load offset=5944
      i32.const -1
      i32.add
      local.tee 1
      i32.store offset=5944
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 0
        i32.const 255
        i32.store8 offset=5941
      end
      local.get 2
      i32.load offset=8
      local.tee 1
      local.get 2
      i32.load offset=4
      i32.store offset=4
      local.get 2
      i32.load offset=4
      local.get 1
      i32.store offset=8
      local.get 2
      local.get 2
      i32.store offset=4
      local.get 2
      local.get 2
      i32.store offset=8
      block  ;; label = @2
        local.get 3
        i32.const 3
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=40
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=7052
        call $free
        i32.const 0
        local.get 2
        i32.load offset=40
        i32.store offset=7052
        return
      end
      loop  ;; label = @2
        local.get 5
        i32.load
        local.tee 1
        local.get 5
        local.get 1
        i32.const 0
        i32.atomic.rmw.cmpxchg
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 5
      i32.const 1
      memory.atomic.notify
      drop
      local.get 2
      i32.const 0
      i32.store offset=20
      local.get 4
      call $__unlock
      return
    end
    call $__tl_unlock
    local.get 4
    call $__unlock
    local.get 5
    local.get 3
    i32.store
    i32.const 0
    call $exit
    unreachable)
  (func $__pthread_create (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    i32.const 1233
    call $puts
    drop
    i32.const 1322
    call $puts
    drop
    local.get 4
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    i32.const 0
    local.set 5
    local.get 4
    i32.const 24
    i32.add
    i32.const 0
    i32.store
    local.get 4
    i32.const 0
    i32.store offset=44
    local.get 4
    i32.const 0
    i32.store offset=40
    local.get 4
    i32.const 0
    i32.store offset=36
    local.get 4
    i32.const 0
    i32.store offset=32
    local.get 4
    i64.const 0
    i64.store offset=8
    global.get $__tls_base
    i32.const 4
    i32.add
    local.set 6
    global.get $__tls_align
    local.set 7
    global.get $__tls_size
    local.set 8
    i32.const 0
    i32.load8_u offset=5940
    local.set 9
    global.get $__tls_base
    local.set 10
    block  ;; label = @1
      local.get 9
      br_if 0 (;@1;)
      block  ;; label = @2
        call $__ofl_lock
        i32.load
        local.tee 9
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          block  ;; label = @4
            local.get 9
            i32.load offset=68
            i32.const -1
            i32.gt_s
            br_if 0 (;@4;)
            local.get 9
            i32.const 0
            i32.store offset=68
          end
          local.get 9
          i32.load offset=52
          local.tee 9
          br_if 0 (;@3;)
        end
      end
      call $__ofl_unlock
      block  ;; label = @2
        i32.const 0
        i32.load offset=5980
        local.tee 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 9
        i32.load offset=68
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 9
        i32.const 0
        i32.store offset=68
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=5200
        local.tee 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 9
        i32.load offset=68
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 9
        i32.const 0
        i32.store offset=68
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=5064
        local.tee 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 9
        i32.load offset=68
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 9
        i32.const 0
        i32.store offset=68
      end
      i32.const 0
      i32.const 1
      i32.store8 offset=5940
      local.get 6
      i32.const 7048
      i32.store offset=68
    end
    i32.const 0
    local.set 11
    i32.const 0
    local.set 9
    block  ;; label = @1
      local.get 1
      i32.const 1
      i32.add
      local.tee 12
      i32.const 2
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 1364
      call $puts
      drop
      local.get 4
      local.get 1
      i32.load
      local.tee 11
      i32.store offset=44
      local.get 4
      local.get 1
      i32.load offset=4
      local.tee 5
      i32.store offset=40
      local.get 4
      local.get 1
      i32.load offset=8
      local.tee 9
      i32.store offset=36
      local.get 4
      local.get 1
      i32.load offset=12
      i32.store offset=32
      local.get 4
      i32.const 24
      i32.add
      local.get 1
      i32.const 32
      i32.add
      i32.load
      i32.store
      local.get 4
      i32.const 16
      i32.add
      local.get 1
      i32.const 24
      i32.add
      i64.load align=4
      i64.store
      local.get 4
      local.get 1
      i64.load offset=16 align=4
      i64.store offset=8
    end
    call $dummy_0
    block  ;; label = @1
      local.get 12
      i32.const 1
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 1257
      i32.const 0
      call $printf
      drop
      local.get 4
      i32.const 0
      i32.load offset=5204
      local.tee 11
      i32.store offset=44
      local.get 4
      i32.const 0
      i32.load offset=7032
      local.tee 5
      i32.store offset=40
    end
    local.get 8
    local.get 7
    i32.add
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 9
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 1188
                  call $puts
                  drop
                  local.get 9
                  local.get 11
                  i32.sub
                  local.set 13
                  local.get 9
                  i32.const -16
                  i32.and
                  local.set 8
                  i32.const 0
                  local.set 12
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=7044
                      local.get 7
                      i32.add
                      local.tee 1
                      i32.const 2047
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 1
                      local.get 11
                      i32.const 3
                      i32.shr_u
                      i32.lt_u
                      br_if 1 (;@8;)
                    end
                    local.get 1
                    i32.const 15
                    i32.add
                    i32.const -16
                    i32.and
                    local.set 11
                    br 2 (;@6;)
                  end
                  i32.const 0
                  local.set 12
                  local.get 8
                  i32.const 0
                  i32.load offset=7044
                  i32.sub
                  local.tee 9
                  local.get 7
                  i32.sub
                  local.tee 14
                  i32.const 0
                  local.get 1
                  memory.fill
                  block  ;; label = @8
                    local.get 8
                    br_if 0 (;@8;)
                    local.get 14
                    local.set 8
                    br 2 (;@6;)
                  end
                  i32.const 0
                  local.get 7
                  i32.sub
                  local.set 1
                  i32.const 0
                  local.set 5
                  br 2 (;@5;)
                end
                i32.const 0
                local.set 8
                local.get 7
                local.get 11
                i32.add
                i32.const 0
                i32.load offset=7044
                i32.add
                i32.const 15
                i32.add
                i32.const -16
                i32.and
                local.get 5
                i32.const 15
                i32.add
                i32.const -16
                i32.and
                local.tee 12
                i32.add
                local.set 11
              end
              i32.const 1169
              call $puts
              drop
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.load offset=20
                  local.tee 1
                  i32.const 0
                  i32.load offset=5932
                  i32.eq
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    i32.const 0
                    i32.const 0
                    local.get 1
                    i32.atomic.rmw.cmpxchg offset=5932
                    local.tee 9
                    i32.eqz
                    br_if 0 (;@8;)
                    loop  ;; label = @9
                      i32.const 5932
                      i32.const 7040
                      local.get 9
                      i32.const 0
                      call $__wait
                      i32.const 0
                      i32.const 0
                      local.get 1
                      i32.atomic.rmw.cmpxchg offset=5932
                      local.tee 9
                      br_if 0 (;@9;)
                    end
                  end
                  i32.const 0
                  i32.load offset=7036
                  local.set 9
                  br 1 (;@6;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=7036
                i32.const 1
                i32.add
                local.tee 9
                i32.store offset=7036
              end
              i32.const 0
              i32.load offset=7052
              call $free
              i32.const 0
              i32.const 0
              i32.store offset=7052
              block  ;; label = @6
                block  ;; label = @7
                  local.get 9
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 9
                  i32.const -1
                  i32.add
                  i32.store offset=7036
                  br 1 (;@6;)
                end
                loop  ;; label = @7
                  i32.const 0
                  i32.load offset=5932
                  local.tee 9
                  i32.const 0
                  local.get 9
                  i32.const 0
                  i32.atomic.rmw.cmpxchg offset=5932
                  i32.ne
                  br_if 0 (;@7;)
                end
                i32.const 0
                i32.load offset=7040
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.const 1
                memory.atomic.notify offset=5932
                drop
              end
              local.get 11
              call $malloc
              local.tee 5
              i32.eqz
              br_if 1 (;@4;)
              local.get 5
              local.get 11
              i32.add
              i32.const 0
              i32.load offset=7044
              i32.sub
              local.set 9
              block  ;; label = @6
                local.get 8
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                local.get 7
                i32.sub
                local.set 1
                local.get 8
                local.set 14
                br 1 (;@5;)
              end
              i32.const 1280
              i32.const 0
              call $printf
              drop
              local.get 5
              local.get 12
              i32.add
              local.set 13
              local.get 9
              local.get 7
              i32.sub
              local.set 14
              i32.const 0
              local.get 7
              i32.sub
              local.set 1
            end
            local.get 6
            local.get 10
            i32.sub
            local.get 9
            local.get 1
            i32.add
            call $__copy_tls
            local.tee 8
            i32.add
            local.tee 1
            local.get 1
            i32.store
            local.get 1
            i32.const 3
            i32.const 2
            local.get 4
            i32.load offset=32
            select
            i32.store offset=28
            local.get 1
            local.get 6
            i64.load offset=12 align=4
            i64.store offset=12 align=4
            local.get 1
            local.get 1
            i32.const 72
            i32.add
            i32.store offset=72
            local.get 1
            local.get 12
            i32.store offset=56
            local.get 1
            local.get 11
            i32.store offset=44
            local.get 1
            local.get 5
            i32.store offset=40
            local.get 1
            i32.const 5948
            i32.store offset=92
            local.get 1
            local.get 9
            i32.store offset=68
            local.get 1
            local.get 14
            i32.const -16
            i32.add
            local.tee 9
            i32.const -4
            i32.and
            local.tee 7
            local.get 13
            i32.sub
            i32.store offset=52
            local.get 1
            local.get 9
            i32.const -16
            i32.and
            local.tee 9
            i32.store offset=48
            local.get 7
            local.get 3
            i32.store offset=12
            local.get 7
            local.get 2
            i32.store offset=8
            local.get 7
            local.get 9
            i32.store
            local.get 7
            local.get 8
            i32.store offset=4
            local.get 6
            i32.load offset=20
            local.tee 11
            i32.const 0
            i32.load offset=5932
            i32.eq
            br_if 1 (;@3;)
            i32.const 0
            i32.const 0
            local.get 11
            i32.atomic.rmw.cmpxchg offset=5932
            local.tee 9
            i32.eqz
            br_if 2 (;@2;)
            loop  ;; label = @5
              i32.const 5932
              i32.const 7040
              local.get 9
              i32.const 0
              call $__wait
              i32.const 0
              i32.const 0
              local.get 11
              i32.atomic.rmw.cmpxchg offset=5932
              local.tee 9
              br_if 0 (;@5;)
              br 3 (;@2;)
            end
          end
          call $dummy_0
          i32.const 6
          local.set 9
          br 2 (;@1;)
        end
        i32.const 0
        i32.const 0
        i32.load offset=7036
        i32.const 1
        i32.add
        i32.store offset=7036
      end
      i32.const 0
      i32.const 0
      i32.load offset=5944
      local.tee 9
      i32.const 1
      i32.add
      i32.store offset=5944
      block  ;; label = @2
        local.get 9
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=5941
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          call $__wasi_thread_spawn
          local.tee 11
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          i32.const 1301
          call $puts
          drop
          local.get 1
          local.get 11
          i32.atomic.store offset=20
          local.get 1
          local.get 6
          i32.store offset=4
          local.get 6
          i32.load offset=8
          local.tee 9
          local.get 1
          i32.store offset=4
          local.get 1
          local.get 9
          i32.store offset=8
          local.get 1
          i32.load offset=4
          local.get 1
          i32.store offset=8
          br 1 (;@2;)
        end
        i32.const 0
        i32.const 0
        i32.load offset=5944
        i32.const -1
        i32.add
        local.tee 9
        i32.store offset=5944
        i32.const -6
        local.set 11
        local.get 9
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store8 offset=5941
      end
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=7036
          local.tee 9
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.get 9
          i32.const -1
          i32.add
          i32.store offset=7036
          br 1 (;@2;)
        end
        loop  ;; label = @3
          i32.const 0
          i32.load offset=5932
          local.tee 9
          i32.const 0
          local.get 9
          i32.const 0
          i32.atomic.rmw.cmpxchg offset=5932
          i32.ne
          br_if 0 (;@3;)
        end
        i32.const 0
        i32.load offset=7040
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        memory.atomic.notify offset=5932
        drop
      end
      call $dummy_0
      block  ;; label = @2
        local.get 11
        i32.const -1
        i32.gt_s
        br_if 0 (;@2;)
        local.get 5
        call $free
        i32.const 0
        local.get 11
        i32.sub
        local.set 9
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store
      i32.const 0
      local.set 9
    end
    local.get 4
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 9)
  (func $__clock_gettime (type 4) (param i32 i32) (result i32)
    (local i32 i64 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        i64.const 1
        local.get 2
        i32.const 8
        i32.add
        call $__wasi_clock_time_get
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        global.get $__tls_base
        i32.const 0
        i32.add
        local.get 0
        i32.store
        i32.const -1
        local.set 0
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      i64.load offset=8
      local.tee 3
      i64.const 1000000000
      i64.div_u
      local.tee 4
      i64.store
      local.get 1
      local.get 3
      local.get 4
      i64.const 1000000000
      i64.mul
      i64.sub
      i64.store32 offset=8
      i32.const 0
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $__timedwait_cp (type 13) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          i64.const -1
          local.set 6
          br 1 (;@2;)
        end
        i32.const 28
        local.set 7
        local.get 3
        i32.load offset=8
        i32.const 999999999
        i32.gt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 5
        call $__clock_gettime
        br_if 1 (;@1;)
        local.get 5
        local.get 3
        i64.load
        local.get 5
        i64.load
        i64.sub
        local.tee 6
        i64.store
        local.get 5
        local.get 3
        i32.load offset=8
        local.get 5
        i32.load offset=8
        i32.sub
        local.tee 3
        i32.store offset=8
        block  ;; label = @3
          local.get 3
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 5
          local.get 3
          i32.const 1000000000
          i32.add
          local.tee 3
          i32.store offset=8
          local.get 5
          local.get 6
          i64.const -1
          i64.add
          local.tee 6
          i64.store
        end
        block  ;; label = @3
          local.get 6
          i64.const 0
          i64.ge_s
          br_if 0 (;@3;)
          i32.const 73
          local.set 7
          br 2 (;@1;)
        end
        local.get 6
        i64.const 1000000000
        i64.mul
        local.get 3
        i64.extend_i32_s
        i64.add
        local.set 6
      end
      i32.const 0
      i32.const 0
      local.get 0
      local.get 4
      i32.const 0
      i32.ne
      i32.const 7
      i32.shl
      local.get 1
      local.get 6
      call $__wasilibc_futex_wait
      local.tee 3
      i32.sub
      local.tee 7
      local.get 3
      i32.const -17
      i32.and
      i32.const -27
      i32.ne
      select
      local.get 7
      local.get 3
      i32.const -73
      i32.ne
      select
      local.set 7
    end
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 7)
  (func $__timedwait (type 13) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i64 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    i32.const 1
    local.get 5
    i32.const 12
    i32.add
    call $__pthread_setcancelstate
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          i64.const -1
          local.set 6
          br 1 (;@2;)
        end
        i32.const 28
        local.set 7
        local.get 3
        i32.load offset=8
        i32.const 999999999
        i32.gt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 5
        i32.const 16
        i32.add
        call $__clock_gettime
        br_if 1 (;@1;)
        local.get 5
        local.get 3
        i64.load
        local.get 5
        i64.load offset=16
        i64.sub
        local.tee 6
        i64.store offset=16
        local.get 5
        local.get 3
        i32.load offset=8
        local.get 5
        i32.load offset=24
        i32.sub
        local.tee 3
        i32.store offset=24
        block  ;; label = @3
          local.get 3
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 5
          local.get 3
          i32.const 1000000000
          i32.add
          local.tee 3
          i32.store offset=24
          local.get 5
          local.get 6
          i64.const -1
          i64.add
          local.tee 6
          i64.store offset=16
        end
        block  ;; label = @3
          local.get 6
          i64.const 0
          i64.ge_s
          br_if 0 (;@3;)
          i32.const 73
          local.set 7
          br 2 (;@1;)
        end
        local.get 6
        i64.const 1000000000
        i64.mul
        local.get 3
        i64.extend_i32_s
        i64.add
        local.set 6
      end
      i32.const 0
      i32.const 0
      local.get 0
      local.get 4
      i32.const 0
      i32.ne
      i32.const 7
      i32.shl
      local.get 1
      local.get 6
      call $__wasilibc_futex_wait
      local.tee 3
      i32.sub
      local.tee 7
      local.get 3
      i32.const -17
      i32.and
      i32.const -27
      i32.ne
      select
      local.get 7
      local.get 3
      i32.const -73
      i32.ne
      select
      local.set 7
    end
    local.get 5
    i32.load offset=12
    i32.const 0
    call $__pthread_setcancelstate
    drop
    local.get 5
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 7)
  (func $__pthread_join (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 0
    call $__pthread_timedjoin_np)
  (func $__pthread_timedjoin_np (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    call $__pthread_testcancel
    i32.const 1
    local.get 3
    i32.const 12
    i32.add
    call $__pthread_setcancelstate
    drop
    block  ;; label = @1
      local.get 3
      i32.load offset=12
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $__pthread_setcancelstate
      drop
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=28
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 28
            i32.add
            local.set 5
            loop  ;; label = @5
              local.get 4
              i32.const 3
              i32.ge_s
              br_if 2 (;@3;)
              local.get 5
              local.get 4
              i32.const 2716
              local.get 2
              i32.const 1
              call $__timedwait_cp
              local.set 6
              block  ;; label = @6
                local.get 5
                i32.load
                local.tee 4
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.const 73
                i32.eq
                br_if 0 (;@6;)
                local.get 6
                i32.const 28
                i32.ne
                br_if 1 (;@5;)
              end
            end
            local.get 3
            i32.load offset=12
            i32.const 0
            call $__pthread_setcancelstate
            drop
            local.get 6
            i32.const 28
            i32.eq
            br_if 3 (;@1;)
            local.get 6
            i32.const 73
            i32.eq
            br_if 3 (;@1;)
            br 2 (;@2;)
          end
          local.get 3
          i32.load offset=12
          i32.const 0
          call $__pthread_setcancelstate
          drop
          br 1 (;@2;)
        end
        unreachable
        unreachable
      end
      local.get 0
      call $__tl_sync
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        i32.load offset=60
        i32.store
      end
      i32.const 0
      local.set 6
      local.get 0
      i32.load offset=40
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      call $free
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 6)
  (func $pthread_mutex_destroy (type 2) (param i32) (result i32)
    i32.const 28
    i32.const 0
    local.get 0
    i32.load
    i32.const 128
    i32.gt_s
    select)
  (func $pthread_mutex_init (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.tee 4
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 2
    i64.load offset=8
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i64.load
    i64.store align=4
    local.get 0
    i32.const 16
    i32.add
    local.get 4
    i64.load
    i64.store align=4
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.load
      i32.store
    end
    i32.const 0)
  (func $__pthread_mutex_lock (type 2) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u
        i32.const 15
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 1
        local.get 0
        i32.const 0
        i32.const 10
        i32.atomic.rmw.cmpxchg offset=4
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 0
      i32.const 0
      call $__pthread_mutex_timedlock
      local.set 1
    end
    local.get 1)
  (func $__pthread_mutex_timedlock (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 3
        i32.const 15
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        local.get 0
        i32.const 0
        i32.const 10
        i32.atomic.rmw.cmpxchg offset=4
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.set 3
      end
      local.get 0
      call $__pthread_mutex_trylock
      local.tee 4
      i32.const 10
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const -1
      i32.xor
      i32.const 128
      i32.and
      local.set 5
      local.get 0
      i32.const 4
      i32.add
      local.set 6
      i32.const -100
      local.set 7
      block  ;; label = @2
        loop  ;; label = @3
          local.get 6
          i32.load
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=8
          br_if 1 (;@2;)
          local.get 2
          i32.const 0
          i32.store offset=12
          local.get 2
          i32.const 0
          i32.const 0
          i32.atomic.rmw.cmpxchg offset=12
          drop
          local.get 6
          i32.load
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=8
          br_if 1 (;@2;)
          local.get 2
          i32.const 0
          i32.store offset=12
          local.get 2
          i32.const 0
          i32.const 0
          i32.atomic.rmw.cmpxchg offset=12
          drop
          local.get 7
          i32.const 2
          i32.add
          local.tee 7
          br_if 0 (;@3;)
        end
      end
      global.get $__tls_base
      local.set 7
      local.get 0
      call $__pthread_mutex_trylock
      local.tee 4
      i32.const 10
      i32.ne
      br_if 0 (;@1;)
      local.get 7
      i32.const 4
      i32.add
      local.set 8
      local.get 3
      i32.const 4
      i32.and
      i32.eqz
      local.set 9
      local.get 3
      i32.const 3
      i32.and
      i32.const 2
      i32.ne
      local.set 3
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.load
            local.tee 4
            i32.const 1073741823
            i32.and
            local.tee 7
            br_if 0 (;@4;)
            local.get 4
            i32.const 0
            i32.ne
            local.get 9
            i32.and
            i32.eqz
            br_if 1 (;@3;)
          end
          block  ;; label = @4
            local.get 3
            br_if 0 (;@4;)
            local.get 7
            local.get 8
            i32.load offset=20
            i32.ne
            br_if 0 (;@4;)
            i32.const 16
            local.set 4
            br 3 (;@1;)
          end
          loop  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 7
            local.get 0
            local.get 7
            local.get 7
            i32.const 1
            i32.add
            i32.atomic.rmw.cmpxchg offset=8
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 6
          local.get 4
          local.get 4
          i32.const -2147483648
          i32.or
          local.tee 7
          i32.atomic.rmw.cmpxchg
          drop
          local.get 6
          local.get 7
          i32.const 2716
          local.get 1
          local.get 5
          call $__timedwait
          local.set 4
          loop  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 7
            local.get 0
            local.get 7
            local.get 7
            i32.const -1
            i32.add
            i32.atomic.rmw.cmpxchg offset=8
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 4
          i32.const 27
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          br_if 2 (;@1;)
        end
        local.get 0
        call $__pthread_mutex_trylock
        local.tee 4
        i32.const 10
        i32.eq
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $__pthread_mutex_trylock_owner (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__tls_base
    i32.const 4
    i32.add
    local.tee 1
    i32.load offset=20
    local.set 2
    local.get 0
    i32.load offset=4
    local.set 3
    local.get 0
    i32.load
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 3
            i32.const 1073741823
            i32.and
            local.tee 5
            i32.ne
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 4
              i32.const 8
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=20
              i32.const -1
              i32.gt_s
              br_if 0 (;@5;)
              local.get 0
              i32.const 0
              i32.store offset=20
              local.get 3
              i32.const 1073741824
              i32.and
              local.set 3
              br 2 (;@3;)
            end
            local.get 4
            i32.const 3
            i32.and
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            i32.const 6
            local.set 6
            local.get 0
            i32.load offset=20
            local.tee 3
            i32.const 2147483646
            i32.gt_u
            br_if 3 (;@1;)
            local.get 0
            local.get 3
            i32.const 1
            i32.add
            i32.store offset=20
            i32.const 0
            return
          end
          i32.const 10
          local.set 6
          local.get 5
          br_if 2 (;@1;)
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.const 4
            i32.and
            i32.eqz
            br_if 3 (;@1;)
          end
          block  ;; label = @4
            local.get 4
            i32.const 128
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 1
              i32.const 76
              i32.add
              i32.load
              br_if 0 (;@5;)
              local.get 1
              i32.const -12
              i32.store offset=76
            end
            local.get 0
            i32.load offset=8
            local.set 6
            local.get 1
            i32.const 80
            i32.add
            local.get 0
            i32.const 16
            i32.add
            i32.store
            local.get 2
            i32.const -2147483648
            i32.or
            local.get 2
            local.get 6
            select
            local.set 2
          end
          block  ;; label = @4
            local.get 0
            local.get 3
            local.get 2
            local.get 3
            i32.const 1073741824
            i32.and
            i32.or
            i32.atomic.rmw.cmpxchg offset=4
            local.get 3
            i32.eq
            br_if 0 (;@4;)
            local.get 1
            i32.const 80
            i32.add
            i32.const 0
            i32.store
            block  ;; label = @5
              local.get 4
              i32.const 12
              i32.and
              i32.const 12
              i32.ne
              br_if 0 (;@5;)
              i32.const 56
              local.set 6
              local.get 0
              i32.load offset=8
              br_if 4 (;@1;)
            end
            i32.const 10
            return
          end
          local.get 4
          i32.const 8
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 80
        i32.add
        i32.const 0
        i32.store
        i32.const 56
        i32.const 10
        local.get 4
        i32.const 4
        i32.and
        select
        return
      end
      local.get 0
      local.get 1
      i32.load offset=72
      local.tee 4
      i32.store offset=16
      local.get 0
      local.get 1
      i32.const 72
      i32.add
      local.tee 6
      i32.store offset=12
      local.get 0
      i32.const 16
      i32.add
      local.set 2
      block  ;; label = @2
        local.get 4
        local.get 6
        i32.eq
        br_if 0 (;@2;)
        local.get 4
        i32.const -4
        i32.add
        local.get 2
        i32.store
      end
      local.get 1
      local.get 2
      i32.store offset=72
      i32.const 0
      local.set 6
      local.get 1
      i32.const 80
      i32.add
      i32.const 0
      i32.store
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=20
      i32.const 62
      local.set 6
    end
    local.get 6)
  (func $__pthread_mutex_trylock (type 2) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      i32.const 15
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.const 10
      i32.atomic.rmw.cmpxchg offset=4
      i32.const 10
      i32.and
      return
    end
    local.get 0
    call $__pthread_mutex_trylock_owner)
  (func $__pthread_mutex_unlock (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load
    local.tee 1
    i32.const -1
    i32.xor
    i32.const 128
    i32.and
    local.set 2
    local.get 0
    i32.load offset=8
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 15
          i32.and
          local.tee 4
          br_if 0 (;@3;)
          i32.const 0
          local.set 5
          br 1 (;@2;)
        end
        i32.const 63
        local.set 5
        local.get 0
        i32.load offset=4
        local.tee 6
        i32.const 1073741823
        i32.and
        global.get $__tls_base
        i32.const 4
        i32.add
        local.tee 7
        i32.load offset=20
        i32.ne
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 1
          i32.const 3
          i32.and
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=20
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 5
          i32.const -1
          i32.add
          i32.store offset=20
          i32.const 0
          return
        end
        local.get 6
        i32.const 1
        i32.shl
        local.get 1
        i32.const 29
        i32.shl
        i32.and
        i32.const 31
        i32.shr_s
        local.set 1
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          local.get 7
          i32.const 80
          i32.add
          local.get 0
          i32.const 16
          i32.add
          i32.store
        end
        local.get 1
        i32.const 2147483647
        i32.and
        local.set 5
        local.get 0
        i32.load offset=12
        local.tee 6
        local.get 0
        i32.load offset=16
        local.tee 1
        i32.store
        local.get 1
        local.get 7
        i32.const 72
        i32.add
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        i32.const -4
        i32.add
        local.get 6
        i32.store
      end
      local.get 0
      i32.const 4
      i32.add
      local.set 0
      loop  ;; label = @2
        local.get 0
        i32.load
        local.tee 1
        local.get 0
        local.get 1
        local.get 5
        i32.atomic.rmw.cmpxchg
        i32.ne
        br_if 0 (;@2;)
      end
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        br_if 0 (;@2;)
        local.get 7
        i32.const 80
        i32.add
        i32.const 0
        i32.store
      end
      i32.const 0
      local.set 5
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        local.get 1
        i32.const -1
        i32.gt_s
        br_if 1 (;@1;)
      end
      local.get 0
      i32.const 1
      memory.atomic.notify
      drop
    end
    local.get 5)
  (func $__pthread_setcancelstate (type 4) (param i32 i32) (result i32)
    (local i32)
    i32.const 28
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.const 2
      i32.gt_u
      br_if 0 (;@1;)
      global.get $__tls_base
      i32.const 4
      i32.add
      local.set 2
      block  ;; label = @2
        local.get 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        i32.load8_u offset=36
        i32.store
      end
      local.get 2
      local.get 0
      i32.store8 offset=36
      i32.const 0
      local.set 2
    end
    local.get 2)
  (func $__pthread_testcancel (type 9)
    call $__testcancel)
  (func $__testcancel (type 9))
  (func $wasi_thread_start (type 10) (param i32 i32)
    local.get 1
    i32.load
    global.set $__stack_pointer
    local.get 1
    i32.load offset=4
    global.set $__tls_base
    local.get 0
    local.get 1
    call $__wasi_thread_start_C
    i32.const 5932
    i32.const 0
    i32.atomic.store
    i32.const 5932
    i32.const 1
    memory.atomic.notify
    drop)
  (func $__muloti4 (type 18) (param i32 i64 i64 i64 i64 i32)
    (local i32 i64 i64 i64 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 5
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          i64.const -9223372036854775808
          i64.xor
          i64.or
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 3
          i64.const 1
          i64.gt_u
          local.get 4
          i64.const 0
          i64.ne
          local.get 4
          i64.eqz
          select
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 3
          local.get 4
          i64.const -9223372036854775808
          i64.xor
          i64.or
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 1
          i64.const 1
          i64.gt_u
          local.get 2
          i64.const 0
          i64.ne
          local.get 2
          i64.eqz
          select
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 2
        i64.const 63
        i64.shr_s
        local.tee 7
        local.get 1
        i64.xor
        local.tee 8
        local.get 7
        i64.sub
        local.tee 9
        i64.const 2
        i64.lt_u
        local.get 7
        local.get 2
        i64.xor
        local.get 7
        i64.sub
        local.get 8
        local.get 7
        i64.lt_u
        i64.extend_i32_u
        i64.sub
        local.tee 10
        i64.const 0
        i64.lt_s
        local.get 10
        i64.eqz
        select
        br_if 1 (;@1;)
        local.get 4
        i64.const 63
        i64.shr_s
        local.tee 8
        local.get 3
        i64.xor
        local.tee 11
        local.get 8
        i64.sub
        local.tee 12
        i64.const 2
        i64.lt_u
        local.get 8
        local.get 4
        i64.xor
        local.get 8
        i64.sub
        local.get 11
        local.get 8
        i64.lt_u
        i64.extend_i32_u
        i64.sub
        local.tee 11
        i64.const 0
        i64.lt_s
        local.get 11
        i64.eqz
        select
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 7
          local.get 8
          i64.xor
          local.tee 7
          local.get 7
          i64.or
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 6
          i32.const 16
          i32.add
          i64.const -1
          i64.const 9223372036854775807
          local.get 12
          local.get 11
          call $__udivti3
          local.get 9
          local.get 6
          i64.load offset=16
          i64.gt_u
          local.get 10
          local.get 6
          i32.const 24
          i32.add
          i64.load
          local.tee 7
          i64.gt_u
          local.get 10
          local.get 7
          i64.eq
          select
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 6
        i32.const 32
        i32.add
        i64.const 0
        i64.const -9223372036854775808
        local.get 12
        local.get 11
        call $__udivti3
        local.get 9
        local.get 6
        i64.load offset=32
        i64.le_u
        local.get 10
        local.get 6
        i32.const 40
        i32.add
        i64.load
        local.tee 7
        i64.le_u
        local.get 10
        local.get 7
        i64.eq
        select
        br_if 1 (;@1;)
      end
      local.get 5
      i32.const 1
      i32.store
    end
    local.get 6
    local.get 3
    local.get 4
    local.get 1
    local.get 2
    call $__multi3
    local.get 0
    local.get 6
    i32.const 8
    i32.add
    i64.load
    i64.store offset=8
    local.get 0
    local.get 6
    i64.load
    i64.store
    local.get 6
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $__multi3 (type 19) (param i32 i64 i64 i64 i64)
    (local i64)
    local.get 0
    local.get 4
    local.get 1
    i64.mul
    local.get 2
    local.get 3
    i64.mul
    i64.add
    local.get 3
    i64.const 32
    i64.shr_u
    local.tee 2
    local.get 1
    i64.const 32
    i64.shr_u
    local.tee 4
    i64.mul
    i64.add
    local.get 3
    i64.const 4294967295
    i64.and
    local.tee 3
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 1
    i64.mul
    local.tee 5
    i64.const 32
    i64.shr_u
    local.get 3
    local.get 4
    i64.mul
    i64.add
    local.tee 3
    i64.const 32
    i64.shr_u
    i64.add
    local.get 3
    i64.const 4294967295
    i64.and
    local.get 2
    local.get 1
    i64.mul
    i64.add
    local.tee 1
    i64.const 32
    i64.shr_u
    i64.add
    i64.store offset=8
    local.get 0
    local.get 1
    i64.const 32
    i64.shl
    local.get 5
    i64.const 4294967295
    i64.and
    i64.or
    i64.store)
  (func $__ashlti3 (type 20) (param i32 i64 i64 i32)
    (local i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 64
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.const -64
        i32.add
        i64.extend_i32_u
        i64.shl
        local.set 2
        i64.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 64
      local.get 3
      i32.sub
      i64.extend_i32_u
      i64.shr_u
      local.get 2
      local.get 3
      i64.extend_i32_u
      local.tee 4
      i64.shl
      i64.or
      local.set 2
      local.get 1
      local.get 4
      i64.shl
      local.set 1
    end
    local.get 0
    local.get 1
    i64.store
    local.get 0
    local.get 2
    i64.store offset=8)
  (func $__udivmodti4 (type 18) (param i32 i64 i64 i64 i64 i32)
    (local i32 i64 i64 i64 i64 i64 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          local.get 1
          i64.le_u
          local.get 4
          local.get 2
          i64.le_u
          local.get 4
          local.get 2
          i64.eq
          select
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 5
            br_if 0 (;@4;)
            i64.const 0
            local.set 7
            br 2 (;@2;)
          end
          local.get 5
          local.get 1
          i64.store
          local.get 5
          local.get 2
          i64.store offset=8
          i64.const 0
          local.set 7
          br 1 (;@2;)
        end
        i64.const 0
        local.set 7
        block  ;; label = @3
          local.get 4
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 3
              i64.ge_u
              br_if 0 (;@5;)
              local.get 2
              local.get 3
              i64.clz
              local.tee 8
              i64.shl
              local.get 1
              i64.const 1
              i64.shr_u
              local.get 8
              i64.const -1
              i64.xor
              i64.shr_u
              i64.or
              local.tee 9
              local.get 9
              local.get 3
              local.get 8
              i64.shl
              local.tee 10
              i64.const 32
              i64.shr_u
              local.tee 2
              i64.div_u
              local.tee 4
              local.get 2
              i64.mul
              i64.sub
              local.set 3
              local.get 1
              local.get 8
              i64.shl
              local.tee 1
              i64.const 4294967295
              i64.and
              local.set 11
              local.get 1
              i64.const 32
              i64.shr_u
              local.set 1
              local.get 10
              i64.const 4294967295
              i64.and
              local.set 7
              block  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 4
                    i64.const 4294967295
                    i64.gt_u
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 7
                    i64.mul
                    local.get 3
                    i64.const 32
                    i64.shl
                    local.get 1
                    i64.or
                    i64.le_u
                    br_if 2 (;@6;)
                  end
                  local.get 4
                  i64.const -1
                  i64.add
                  local.set 4
                  local.get 3
                  local.get 2
                  i64.add
                  local.tee 3
                  i64.const 4294967296
                  i64.lt_u
                  br_if 0 (;@7;)
                end
              end
              local.get 1
              local.get 9
              i64.const 32
              i64.shl
              i64.or
              local.get 4
              local.get 10
              i64.mul
              i64.sub
              local.tee 9
              local.get 9
              local.get 2
              i64.div_u
              local.tee 3
              local.get 2
              i64.mul
              i64.sub
              local.set 1
              block  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i64.const 4294967295
                    i64.gt_u
                    br_if 0 (;@8;)
                    local.get 3
                    local.get 7
                    i64.mul
                    local.get 1
                    i64.const 32
                    i64.shl
                    local.get 11
                    i64.or
                    i64.le_u
                    br_if 2 (;@6;)
                  end
                  local.get 3
                  i64.const -1
                  i64.add
                  local.set 3
                  local.get 1
                  local.get 2
                  i64.add
                  local.tee 1
                  i64.const 4294967296
                  i64.lt_u
                  br_if 0 (;@7;)
                end
              end
              local.get 9
              i64.const 32
              i64.shl
              local.get 11
              i64.or
              local.get 3
              local.get 10
              i64.mul
              i64.sub
              local.get 8
              i64.shr_u
              local.set 1
              i64.const 0
              local.set 11
              br 1 (;@4;)
            end
            local.get 2
            local.get 2
            local.get 3
            i64.div_u
            local.tee 11
            local.get 3
            i64.mul
            i64.sub
            local.get 3
            i64.clz
            local.tee 10
            i64.shl
            local.get 1
            i64.const 1
            i64.shr_u
            local.get 10
            i64.const -1
            i64.xor
            i64.shr_u
            i64.or
            local.tee 12
            local.get 12
            local.get 3
            local.get 10
            i64.shl
            local.tee 9
            i64.const 32
            i64.shr_u
            local.tee 2
            i64.div_u
            local.tee 4
            local.get 2
            i64.mul
            i64.sub
            local.set 3
            local.get 1
            local.get 10
            i64.shl
            local.tee 1
            i64.const 4294967295
            i64.and
            local.set 8
            local.get 1
            i64.const 32
            i64.shr_u
            local.set 1
            local.get 9
            i64.const 4294967295
            i64.and
            local.set 7
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i64.const 4294967295
                  i64.gt_u
                  br_if 0 (;@7;)
                  local.get 4
                  local.get 7
                  i64.mul
                  local.get 3
                  i64.const 32
                  i64.shl
                  local.get 1
                  i64.or
                  i64.le_u
                  br_if 2 (;@5;)
                end
                local.get 4
                i64.const -1
                i64.add
                local.set 4
                local.get 3
                local.get 2
                i64.add
                local.tee 3
                i64.const 4294967296
                i64.lt_u
                br_if 0 (;@6;)
              end
            end
            local.get 12
            i64.const 32
            i64.shl
            local.get 1
            i64.or
            local.get 4
            local.get 9
            i64.mul
            i64.sub
            local.tee 12
            local.get 12
            local.get 2
            i64.div_u
            local.tee 3
            local.get 2
            i64.mul
            i64.sub
            local.set 1
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i64.const 4294967295
                  i64.gt_u
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 7
                  i64.mul
                  local.get 1
                  i64.const 32
                  i64.shl
                  local.get 8
                  i64.or
                  i64.le_u
                  br_if 2 (;@5;)
                end
                local.get 3
                i64.const -1
                i64.add
                local.set 3
                local.get 1
                local.get 2
                i64.add
                local.tee 1
                i64.const 4294967296
                i64.lt_u
                br_if 0 (;@6;)
              end
            end
            local.get 12
            i64.const 32
            i64.shl
            local.get 8
            i64.or
            local.get 3
            local.get 9
            i64.mul
            i64.sub
            local.get 10
            i64.shr_u
            local.set 1
          end
          local.get 3
          local.get 4
          i64.const 32
          i64.shl
          i64.add
          local.set 7
          local.get 5
          i32.eqz
          br_if 2 (;@1;)
          local.get 5
          i64.const 0
          i64.store offset=8
          local.get 5
          local.get 1
          i64.store
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 4
          i64.clz
          i32.wrap_i64
          local.tee 13
          local.get 2
          i64.clz
          i32.wrap_i64
          local.tee 14
          i32.sub
          local.tee 15
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 6
          local.get 3
          local.get 4
          local.get 15
          call $__ashlti3
          local.get 13
          i32.const -1
          i32.xor
          local.get 14
          i32.add
          local.set 13
          local.get 6
          i32.const 8
          i32.add
          i64.load
          local.set 4
          i64.const 0
          local.set 7
          local.get 6
          i64.load
          local.set 3
          loop  ;; label = @4
            local.get 2
            local.get 4
            local.get 2
            i64.const -1
            i64.xor
            i64.add
            local.get 3
            local.get 1
            i64.const -1
            i64.xor
            i64.add
            local.get 3
            i64.lt_u
            i64.extend_i32_u
            i64.add
            local.tee 11
            i64.const 63
            i64.shr_s
            local.tee 8
            local.get 4
            i64.and
            i64.sub
            local.get 1
            local.get 8
            local.get 3
            i64.and
            local.tee 8
            i64.lt_u
            i64.extend_i32_u
            i64.sub
            local.set 2
            local.get 3
            i64.const 1
            i64.shr_u
            local.get 4
            i64.const 63
            i64.shl
            i64.or
            local.set 3
            local.get 7
            i64.const 1
            i64.shl
            local.get 11
            i64.const 63
            i64.shr_u
            i64.or
            local.set 7
            local.get 1
            local.get 8
            i64.sub
            local.set 1
            local.get 4
            i64.const 1
            i64.shr_u
            local.set 4
            local.get 13
            i32.const 1
            i32.add
            local.tee 13
            br_if 0 (;@4;)
          end
        end
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.get 2
        i64.store offset=8
        local.get 5
        local.get 1
        i64.store
      end
      i64.const 0
      local.set 11
    end
    local.get 0
    local.get 7
    i64.store
    local.get 0
    local.get 11
    i64.store offset=8
    local.get 6
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $__udivti3 (type 19) (param i32 i64 i64 i64 i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    i32.const 0
    call $__udivmodti4
    local.get 5
    i64.load
    local.set 4
    local.get 0
    local.get 5
    i32.const 8
    i32.add
    i64.load
    i64.store offset=8
    local.get 0
    local.get 4
    i64.store
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (table (;0;) 8 8 funcref)
  (global $__stack_pointer (mut i32) (i32.const 72608))
  (global $__tls_base (mut i32) (i32.const 0))
  (global $__tls_size i32 (i32.const 112))
  (global $__tls_align i32 (i32.const 4))
  (global $GOT.data.internal.__memory_base i32 (i32.const 0))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (export "wasi_thread_start" (func $wasi_thread_start))
  (start $__wasm_init_memory)
  (elem (;0;) (i32.const 1) func $timer_thread $monitor_thread $worker_thread $__stdio_close $__stdio_write $__stdio_seek $__stdout_write)
  (data $.tdata "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data $.rodata "-+   0X0x\00-0X+0X 0X-0x+0x 0x\00nan\00\1b[33mtsd\e3\81\aa\e3\81\97\1b[0m\00\1b[33ma_stackaddr\e3\81\af\e5\ae\9a\e7\be\a9\e3\81\95\e3\82\8c\e3\81\a6\e3\81\84\e3\82\8b\1b[0m\00\1b[31mpthread called\1b[0m\00\1b[33m!attrp || c11\1b[0m\00\1b[33m!stack\0a\1b[0m\00inf\00atomic_store\00NAN\00INF\00=        wasi-libc debugging1129        =\00attrp && !c11\00.\00(null)\00Total Balance: %ld (Expected: %d) \00__wasi_poll_oneoff called(wasi-libc) \00Timer thread created successfully\0a\00sleep called: %u\0a\00[Thread %ld] Completed %ld transfers\0a\00[Timer] Will run for %d seconds\0a\00Runtime: %d seconds\0a\00ERROR: Failed to create worker thread %ld: %s\0a\00ERROR: Failed to create monitor thread: %s\0a\00ERROR: Failed to create timer thread: %s\0a\00[WARN] Unlock on first mutex (idx: %d) failed with code %d: %s\0a\00[WARN] Unlock on second mutex (idx: %d) failed with code %d: %s\0a\00Account %d: Balance=%5d, Transfers=%6ld\0a\00Total Transfers: %ld, Errors: %ld\0a\00[Thread %ld] Finished. Total transfers: %ld\0a\00\e2\9c\97 ERROR! Difference: %ld\0a\00[Monitor] Started\0a\00[Thread %ld] Started\0a\00[Monitor] Finished\0a\00Transfer Amount: %d\0a\00Initial Balance per Account: %d\0a\00Accounts: %d\0a\00Threads: %d\0a\00\e2\9c\93 OK\0a\00========================================\0a\00\0a========== Account Status ==========\0a\00\0aInitial state:\0a\00You can pause/resume the process using your mechanism.\0a\00Support for formatting long double values is currently disabled.\0aTo enable it, add -lc-printscan-long-double to the link command.\0a\00Press Ctrl+C to stop early if needed.\0a\00[Timer] Time's up! Stopping all threads...\0a\00\0aStarting simulation...\0a\00[Timer] %d seconds elapsed...\0a\00Creating timer thread...\0a\00------------------------------------\0a\00Bank Account Simulator (Multi-threaded)\0a\00pthread_t\ef\bc\9a%lu \0a\00\00\00\00\00\00\00\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05\00\00H\13\00\00\d0\13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF")
  (data $.data "\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\06\00\00\00h\17\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00H\13\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\06\00\00\00x\17\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\d0\13\00\00\00\00\02\00"))
