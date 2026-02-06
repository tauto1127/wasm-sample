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
  (type (;11;) (func (param i32 i32) (result i64)))
  (type (;12;) (func (param i32 i32 i32)))
  (type (;13;) (func (result i64)))
  (type (;14;) (func (param i32 i32) (result f64)))
  (type (;15;) (func (param i32 i32 i32 i32 i32)))
  (type (;16;) (func (param i32 i32 i32 i32)))
  (type (;17;) (func (param i64)))
  (type (;18;) (func (param f64 i32) (result f64)))
  (type (;19;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;20;) (func (param i32 i64)))
  (type (;21;) (func (param i32 i32 i32 i64) (result i64)))
  (type (;22;) (func (param i32 i32 i32) (result i64)))
  (type (;23;) (func (param i32 i32 i32 i64) (result i32)))
  (type (;24;) (func (param i32 i64 i64 i64 i64)))
  (import "env" "memory" (memory (;0;) 2 1024 shared))
  (import "wasi_snapshot_preview1" "args_get" (func $__imported_wasi_snapshot_preview1_args_get (type 4)))
  (import "wasi_snapshot_preview1" "args_sizes_get" (func $__imported_wasi_snapshot_preview1_args_sizes_get (type 4)))
  (import "wasi_snapshot_preview1" "clock_time_get" (func $__imported_wasi_snapshot_preview1_clock_time_get (type 5)))
  (import "wasi_snapshot_preview1" "fd_close" (func $__imported_wasi_snapshot_preview1_fd_close (type 2)))
  (import "wasi_snapshot_preview1" "fd_fdstat_get" (func $__imported_wasi_snapshot_preview1_fd_fdstat_get (type 4)))
  (import "wasi_snapshot_preview1" "fd_seek" (func $__imported_wasi_snapshot_preview1_fd_seek (type 6)))
  (import "wasi_snapshot_preview1" "fd_write" (func $__imported_wasi_snapshot_preview1_fd_write (type 7)))
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
          i32.const 7628
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
        i32.const 4464
        memory.init $.rodata
        i32.const 5600
        i32.const 0
        i32.const 272
        memory.init $.data
        i32.const 5872
        i32.const 0
        i32.const 1756
        memory.fill
        i32.const 7628
        i32.const 2
        i32.atomic.store
        i32.const 7628
        i32.const -1
        memory.atomic.notify
        drop
        br 1 (;@1;)
      end
      i32.const 7628
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
        i32.const 5872
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
  (func $checkpoint_hook (type 10) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 0
    i32.store offset=12
    local.get 4
    local.get 1
    i32.store offset=8
    return)
  (func $main (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 f64 i32 i32 f64 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i64 i64 i64 f64 f64 f64 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 416
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
    i32.store offset=412
    local.get 4
    local.get 0
    i32.store offset=408
    local.get 4
    local.get 1
    i32.store offset=404
    local.get 4
    i32.load offset=408
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
    block  ;; label = @1
      block  ;; label = @2
        local.get 12
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=404
        local.set 13
        local.get 13
        i32.load
        local.set 14
        local.get 14
        call $usage
        i32.const 1
        local.set 15
        local.get 4
        local.get 15
        i32.store offset=412
        br 1 (;@1;)
      end
      i32.const 88
      local.set 16
      i32.const 0
      local.set 17
      i32.const 312
      local.set 18
      local.get 4
      local.get 18
      i32.add
      local.set 19
      local.get 19
      local.get 17
      local.get 16
      memory.fill
      local.get 4
      i32.load offset=404
      local.set 20
      local.get 20
      i32.load offset=4
      local.set 21
      i32.const 1181
      local.set 22
      local.get 21
      local.get 22
      call $parse_ll
      local.set 23
      local.get 23
      i32.wrap_i64
      local.set 24
      local.get 4
      local.get 24
      i32.store offset=312
      local.get 4
      i32.load offset=404
      local.set 25
      local.get 25
      i32.load offset=8
      local.set 26
      i32.const 1178
      local.set 27
      local.get 26
      local.get 27
      call $parse_ll
      local.set 28
      local.get 28
      i32.wrap_i64
      local.set 29
      local.get 4
      local.get 29
      i32.store offset=316
      local.get 4
      i32.load offset=404
      local.set 30
      local.get 30
      i32.load offset=12
      local.set 31
      i32.const 1364
      local.set 32
      local.get 31
      local.get 32
      call $parse_ll
      local.set 33
      local.get 33
      i32.wrap_i64
      local.set 34
      local.get 4
      local.get 34
      i32.store offset=320
      local.get 4
      i32.load offset=404
      local.set 35
      local.get 35
      i32.load offset=16
      local.set 36
      i32.const 1370
      local.set 37
      local.get 36
      local.get 37
      call $parse_ll
      local.set 38
      local.get 38
      i32.wrap_i64
      local.set 39
      local.get 4
      local.get 39
      i32.store offset=324
      local.get 4
      i32.load offset=312
      local.set 40
      i32.const 3
      local.set 41
      local.get 40
      local.set 42
      local.get 41
      local.set 43
      local.get 42
      local.get 43
      i32.lt_s
      local.set 44
      i32.const 1
      local.set 45
      local.get 44
      local.get 45
      i32.and
      local.set 46
      block  ;; label = @2
        block  ;; label = @3
          local.get 46
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=316
          local.set 47
          i32.const 3
          local.set 48
          local.get 47
          local.set 49
          local.get 48
          local.set 50
          local.get 49
          local.get 50
          i32.lt_s
          local.set 51
          i32.const 1
          local.set 52
          local.get 51
          local.get 52
          i32.and
          local.set 53
          local.get 53
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1592
        local.set 54
        local.get 54
        call $die
      end
      local.get 4
      i32.load offset=320
      local.set 55
      i32.const 1
      local.set 56
      local.get 55
      local.set 57
      local.get 56
      local.set 58
      local.get 57
      local.get 58
      i32.lt_s
      local.set 59
      i32.const 1
      local.set 60
      local.get 59
      local.get 60
      i32.and
      local.set 61
      block  ;; label = @2
        local.get 61
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1615
        local.set 62
        local.get 62
        call $die
      end
      local.get 4
      i32.load offset=324
      local.set 63
      i32.const 0
      local.set 64
      local.get 63
      local.set 65
      local.get 64
      local.set 66
      local.get 65
      local.get 66
      i32.lt_s
      local.set 67
      i32.const 1
      local.set 68
      local.get 67
      local.get 68
      i32.and
      local.set 69
      block  ;; label = @2
        local.get 69
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1659
        local.set 70
        local.get 70
        call $die
      end
      local.get 4
      i32.load offset=324
      local.set 71
      local.get 4
      local.get 71
      i32.store offset=308
      local.get 4
      i32.load offset=324
      local.set 72
      block  ;; label = @2
        block  ;; label = @3
          local.get 72
          br_if 0 (;@3;)
          i32.const 1
          local.set 73
          local.get 73
          local.set 74
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=324
        local.set 75
        local.get 75
        local.set 74
      end
      local.get 74
      local.set 76
      local.get 4
      local.get 76
      i32.store offset=304
      local.get 4
      i32.load offset=304
      local.set 77
      local.get 4
      local.get 77
      i32.store offset=324
      f64.const 0x1p-3 (;=0.125;)
      local.set 78
      local.get 4
      local.get 78
      f64.store offset=328
      f64.const 0x1.c28f5c28f5c29p-4 (;=0.11;)
      local.set 79
      local.get 4
      local.get 79
      f64.store offset=336
      local.get 4
      i32.load offset=408
      local.set 80
      i32.const 6
      local.set 81
      local.get 80
      local.set 82
      local.get 81
      local.set 83
      local.get 82
      local.get 83
      i32.ge_s
      local.set 84
      i32.const 1
      local.set 85
      local.get 84
      local.get 85
      i32.and
      local.set 86
      block  ;; label = @2
        block  ;; label = @3
          local.get 86
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=404
          local.set 87
          local.get 87
          i32.load offset=20
          local.set 88
          local.get 88
          call $parse_stress
          local.set 89
          local.get 89
          local.set 90
          br 1 (;@2;)
        end
        i32.const 0
        local.set 91
        local.get 91
        local.set 90
      end
      local.get 90
      local.set 92
      local.get 4
      local.get 92
      i32.store offset=344
      local.get 4
      i32.load offset=408
      local.set 93
      i32.const 7
      local.set 94
      local.get 93
      local.set 95
      local.get 94
      local.set 96
      local.get 95
      local.get 96
      i32.ge_s
      local.set 97
      i32.const 1
      local.set 98
      local.get 97
      local.get 98
      i32.and
      local.set 99
      block  ;; label = @2
        block  ;; label = @3
          local.get 99
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=404
          local.set 100
          local.get 100
          i32.load offset=24
          local.set 101
          i32.const 1148
          local.set 102
          local.get 101
          local.get 102
          call $parse_ll
          local.set 103
          local.get 103
          i32.wrap_i64
          local.set 104
          local.get 104
          local.set 105
          br 1 (;@2;)
        end
        i32.const 0
        local.set 106
        local.get 106
        local.set 105
      end
      local.get 105
      local.set 107
      local.get 4
      local.get 107
      i32.store offset=348
      local.get 4
      i32.load offset=408
      local.set 108
      i32.const 8
      local.set 109
      local.get 108
      local.set 110
      local.get 109
      local.set 111
      local.get 110
      local.get 111
      i32.ge_s
      local.set 112
      i32.const 1
      local.set 113
      local.get 112
      local.get 113
      i32.and
      local.set 114
      block  ;; label = @2
        block  ;; label = @3
          local.get 114
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=404
          local.set 115
          local.get 115
          i32.load offset=28
          local.set 116
          i32.const 1165
          local.set 117
          local.get 116
          local.get 117
          call $parse_ll
          local.set 118
          local.get 118
          i32.wrap_i64
          local.set 119
          local.get 119
          local.set 120
          br 1 (;@2;)
        end
        i32.const 1
        local.set 121
        local.get 121
        local.set 120
      end
      local.get 120
      local.set 122
      local.get 4
      local.get 122
      i32.store offset=352
      local.get 4
      i32.load offset=408
      local.set 123
      i32.const 9
      local.set 124
      local.get 123
      local.set 125
      local.get 124
      local.set 126
      local.get 125
      local.get 126
      i32.ge_s
      local.set 127
      i32.const 1
      local.set 128
      local.get 127
      local.get 128
      i32.and
      local.set 129
      block  ;; label = @2
        block  ;; label = @3
          local.get 129
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=404
          local.set 130
          local.get 130
          i32.load offset=32
          local.set 131
          i32.const 1136
          local.set 132
          local.get 131
          local.get 132
          call $parse_ll
          local.set 133
          local.get 133
          i32.wrap_i64
          local.set 134
          local.get 134
          local.set 135
          br 1 (;@2;)
        end
        i32.const 0
        local.set 136
        local.get 136
        local.set 135
      end
      local.get 135
      local.set 137
      local.get 4
      local.get 137
      i32.store offset=356
      local.get 4
      i32.load offset=408
      local.set 138
      i32.const 10
      local.set 139
      local.get 138
      local.set 140
      local.get 139
      local.set 141
      local.get 140
      local.get 141
      i32.ge_s
      local.set 142
      i32.const 1
      local.set 143
      local.get 142
      local.get 143
      i32.and
      local.set 144
      block  ;; label = @2
        block  ;; label = @3
          local.get 144
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=404
          local.set 145
          local.get 145
          i32.load offset=36
          local.set 146
          i32.const 1351
          local.set 147
          local.get 146
          local.get 147
          call $parse_ll
          local.set 148
          local.get 148
          local.set 149
          br 1 (;@2;)
        end
        i64.const 0
        local.set 150
        local.get 150
        local.set 149
      end
      local.get 149
      local.set 151
      local.get 4
      local.get 151
      i64.store offset=360
      local.get 4
      i32.load offset=352
      local.set 152
      i32.const 1
      local.set 153
      local.get 152
      local.set 154
      local.get 153
      nop
      local.set 155
      local.get 154
      local.get 155
      i32.lt_s
      local.set 156
      i32.const 1
      local.set 157
      local.get 156
      local.get 157
      i32.and
      local.set 158
      block  ;; label = @2
        local.get 158
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 159
        local.get 4
        local.get 159
        i32.store offset=352
      end
      local.get 4
      i32.load offset=348
      local.set 160
      i32.const 0
      local.set 161
      local.get 160
      local.set 162
      local.get 161
      local.set 163
      local.get 162
      local.get 163
      i32.lt_s
      local.set 164
      i32.const 1
      local.set 165
      local.get 164
      local.get 165
      i32.and
      local.set 166
      block  ;; label = @2
        local.get 166
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 167
        local.get 4
        local.get 167
        i32.store offset=348
      end
      local.get 4
      i32.load offset=356
      local.set 168
      i32.const 0
      local.set 169
      local.get 168
      local.set 170
      local.get 169
      local.set 171
      local.get 170
      local.get 171
      i32.lt_s
      local.set 172
      i32.const 1
      local.set 173
      local.get 172
      local.get 173
      i32.and
      local.set 174
      block  ;; label = @2
        local.get 174
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 175
        local.get 4
        local.get 175
        i32.store offset=356
      end
      local.get 4
      i64.load offset=360
      local.set 176
      i64.const 0
      local.set 177
      local.get 176
      local.set 178
      local.get 177
      local.set 179
      local.get 178
      local.get 179
      i64.lt_s
      local.set 180
      i32.const 1
      local.set 181
      local.get 180
      local.get 181
      i32.and
      local.set 182
      block  ;; label = @2
        local.get 182
        i32.eqz
        br_if 0 (;@2;)
        i64.const 0
        local.set 183
        local.get 4
        local.get 183
        i64.store offset=360
      end
      local.get 4
      i32.load offset=312
      local.set 184
      i32.const 5
      local.set 185
      local.get 184
      local.get 185
      i32.div_s
      local.set 186
      local.get 4
      local.get 186
      i32.store offset=368
      local.get 4
      i32.load offset=312
      local.set 187
      i32.const 2
      local.set 188
      local.get 187
      local.get 188
      i32.shl
      local.set 189
      i32.const 5
      local.set 190
      local.get 189
      local.get 190
      i32.div_s
      local.set 191
      local.get 4
      local.get 191
      i32.store offset=372
      local.get 4
      i32.load offset=316
      local.set 192
      i32.const 5
      local.set 193
      local.get 192
      local.get 193
      i32.div_s
      local.set 194
      local.get 4
      local.get 194
      i32.store offset=376
      local.get 4
      i32.load offset=316
      local.set 195
      i32.const 2
      local.set 196
      local.get 195
      local.get 196
      i32.shl
      local.set 197
      i32.const 5
      local.set 198
      local.get 197
      local.get 198
      i32.div_s
      local.set 199
      local.get 4
      local.get 199
      i32.store offset=380
      f64.const 0x1.f4p+8 (;=500;)
      local.set 200
      local.get 4
      local.get 200
      f64.store offset=384
      local.get 4
      i32.load offset=368
      local.set 201
      i32.const 1
      local.set 202
      local.get 201
      local.set 203
      local.get 202
      local.set 204
      local.get 203
      local.get 204
      i32.lt_s
      local.set 205
      i32.const 1
      local.set 206
      local.get 205
      local.get 206
      i32.and
      local.set 207
      block  ;; label = @2
        local.get 207
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 208
        local.get 4
        local.get 208
        i32.store offset=368
      end
      local.get 4
      i32.load offset=376
      local.set 209
      i32.const 1
      local.set 210
      local.get 209
      local.set 211
      local.get 210
      local.set 212
      local.get 211
      local.get 212
      i32.lt_s
      local.set 213
      i32.const 1
      local.set 214
      local.get 213
      local.get 214
      i32.and
      local.set 215
      block  ;; label = @2
        local.get 215
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 216
        local.get 4
        local.get 216
        i32.store offset=376
      end
      local.get 4
      i32.load offset=372
      local.set 217
      local.get 4
      i32.load offset=312
      local.set 218
      i32.const 1
      local.set 219
      local.get 218
      local.get 219
      i32.sub
      local.set 220
      local.get 217
      local.set 221
      local.get 220
      local.set 222
      local.get 221
      local.get 222
      i32.gt_s
      local.set 223
      i32.const 1
      local.set 224
      local.get 223
      local.get 224
      i32.and
      local.set 225
      block  ;; label = @2
        local.get 225
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=312
        local.set 226
        i32.const 1
        local.set 227
        local.get 226
        local.get 227
        i32.sub
        local.set 228
        local.get 4
        local.get 228
        i32.store offset=372
      end
      local.get 4
      i32.load offset=380
      local.set 229
      local.get 4
      i32.load offset=316
      local.set 230
      i32.const 1
      local.set 231
      local.get 230
      local.get 231
      i32.sub
      local.set 232
      local.get 229
      local.set 233
      local.get 232
      local.set 234
      local.get 233
      local.get 234
      i32.gt_s
      local.set 235
      i32.const 1
      local.set 236
      local.get 235
      local.get 236
      i32.and
      local.set 237
      block  ;; label = @2
        local.get 237
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=316
        local.set 238
        i32.const 1
        local.set 239
        local.get 238
        local.get 239
        i32.sub
        local.set 240
        local.get 4
        local.get 240
        i32.store offset=380
      end
      i32.const 0
      local.set 241
      local.get 241
      i32.load offset=4832
      local.set 242
      local.get 4
      i32.load offset=312
      local.set 243
      local.get 4
      i32.load offset=316
      local.set 244
      local.get 4
      i32.load offset=320
      local.set 245
      local.get 4
      i32.load offset=308
      local.set 246
      local.get 4
      i32.load offset=324
      local.set 247
      local.get 4
      i32.load offset=344
      local.set 248
      local.get 248
      call $stress_name
      local.set 249
      local.get 4
      i32.load offset=348
      local.set 250
      local.get 4
      i32.load offset=352
      local.set 251
      local.get 4
      i32.load offset=356
      local.set 252
      local.get 4
      i64.load offset=360
      local.set 253
      i32.const 72
      local.set 254
      local.get 4
      local.get 254
      i32.add
      local.set 255
      local.get 255
      local.get 253
      i64.store
      i32.const 64
      local.set 256
      local.get 4
      local.get 256
      i32.add
      local.set 257
      local.get 257
      local.get 252
      i32.store
      i32.const 60
      local.set 258
      local.get 4
      local.get 258
      i32.add
      local.set 259
      local.get 259
      local.get 251
      i32.store
      i32.const 56
      local.set 260
      local.get 4
      local.get 260
      i32.add
      local.set 261
      local.get 261
      local.get 250
      i32.store
      i32.const 52
      local.set 262
      local.get 4
      local.get 262
      i32.add
      local.set 263
      local.get 263
      local.get 249
      i32.store
      i32.const 48
      local.set 264
      local.get 4
      local.get 264
      i32.add
      local.set 265
      local.get 265
      local.get 247
      i32.store
      local.get 4
      local.get 246
      i32.store offset=44
      local.get 4
      local.get 245
      i32.store offset=40
      local.get 4
      local.get 244
      i32.store offset=36
      local.get 4
      local.get 243
      i32.store offset=32
      i32.const 2173
      local.set 266
      i32.const 32
      local.set 267
      local.get 4
      local.get 267
      i32.add
      local.set 268
      local.get 242
      local.get 266
      local.get 268
      call $fprintf
      drop
      local.get 4
      i32.load offset=312
      local.set 269
      local.get 4
      i32.load offset=316
      local.set 270
      local.get 269
      local.get 270
      i32.mul
      local.set 271
      local.get 4
      local.get 271
      i32.store offset=300
      local.get 4
      i32.load offset=300
      local.set 272
      block  ;; label = @2
        block  ;; label = @3
          local.get 272
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=300
          local.set 273
          i32.const 1000000000
          local.set 274
          local.get 273
          local.set 275
          local.get 274
          local.set 276
          local.get 275
          local.get 276
          i32.gt_u
          local.set 277
          i32.const 1
          local.set 278
          local.get 277
          local.get 278
          i32.and
          local.set 279
          local.get 279
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1501
        local.set 280
        local.get 280
        call $die
      end
      local.get 4
      i32.load offset=300
      local.set 281
      i32.const 3
      local.set 282
      local.get 281
      local.get 282
      i32.shl
      local.set 283
      local.get 283
      call $malloc
      local.set 284
      local.get 4
      local.get 284
      i32.store offset=296
      local.get 4
      i32.load offset=300
      local.set 285
      i32.const 3
      local.set 286
      local.get 285
      local.get 286
      i32.shl
      local.set 287
      local.get 287
      call $malloc
      local.set 288
      local.get 4
      local.get 288
      i32.store offset=292
      local.get 4
      i32.load offset=296
      local.set 289
      i32.const 0
      local.set 290
      local.get 289
      local.set 291
      local.get 290
      local.set 292
      local.get 291
      local.get 292
      i32.ne
      local.set 293
      i32.const 1
      local.set 294
      local.get 293
      local.get 294
      i32.and
      local.set 295
      block  ;; label = @2
        block  ;; label = @3
          local.get 295
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=292
          local.set 296
          i32.const 0
          local.set 297
          local.get 296
          local.set 298
          local.get 297
          local.set 299
          local.get 298
          local.get 299
          i32.ne
          local.set 300
          i32.const 1
          local.set 301
          local.get 300
          local.get 301
          i32.and
          local.set 302
          local.get 302
          br_if 1 (;@2;)
        end
        i32.const 1526
        local.set 303
        local.get 303
        call $die
      end
      local.get 4
      i32.load offset=296
      local.set 304
      local.get 4
      i32.load offset=292
      local.set 305
      i32.const 312
      local.set 306
      local.get 4
      local.get 306
      i32.add
      local.set 307
      local.get 307
      local.set 308
      local.get 304
      local.get 305
      local.get 308
      call $init_grid
      local.get 4
      i32.load offset=296
      local.set 309
      local.get 4
      local.get 309
      i32.store offset=288
      local.get 4
      i32.load offset=292
      local.set 310
      local.get 4
      local.get 310
      i32.store offset=284
      local.get 4
      i32.load offset=324
      local.set 311
      i32.const 200
      local.set 312
      local.get 4
      local.get 312
      i32.add
      local.set 313
      local.get 313
      local.set 314
      local.get 314
      local.get 311
      call $barrier_init
      local.get 4
      i32.load offset=312
      local.set 315
      i32.const 2
      local.set 316
      local.get 315
      local.get 316
      i32.sub
      local.set 317
      local.get 4
      local.get 317
      i32.store offset=196
      local.get 4
      i32.load offset=196
      local.set 318
      local.get 4
      i32.load offset=324
      local.set 319
      local.get 318
      local.get 319
      i32.div_s
      local.set 320
      local.get 4
      local.get 320
      i32.store offset=192
      local.get 4
      i32.load offset=196
      local.set 321
      local.get 4
      i32.load offset=324
      local.set 322
      local.get 321
      local.get 322
      i32.rem_s
      local.set 323
      local.get 4
      local.get 323
      i32.store offset=188
      call $now_ns
      local.set 324
      local.get 4
      local.get 324
      i64.store offset=176
      local.get 4
      i32.load offset=308
      local.set 325
      block  ;; label = @2
        block  ;; label = @3
          local.get 325
          br_if 0 (;@3;)
          i32.const 168
          local.set 326
          local.get 4
          local.get 326
          i32.add
          local.set 327
          i32.const 0
          local.set 328
          local.get 327
          local.get 328
          i32.store
          i32.const 160
          local.set 329
          local.get 4
          local.get 329
          i32.add
          local.set 330
          i64.const 0
          local.set 331
          local.get 330
          local.get 331
          i64.store
          i32.const 152
          local.set 332
          local.get 4
          local.get 332
          i32.add
          local.set 333
          local.get 333
          local.get 331
          i64.store
          local.get 4
          local.get 331
          i64.store offset=144
          i32.const 0
          local.set 334
          local.get 4
          local.get 334
          i32.store offset=144
          i32.const 312
          local.set 335
          local.get 4
          local.get 335
          i32.add
          local.set 336
          local.get 336
          local.set 337
          local.get 4
          local.get 337
          i32.store offset=148
          i32.const 200
          local.set 338
          local.get 4
          local.get 338
          i32.add
          local.set 339
          local.get 339
          local.set 340
          local.get 4
          local.get 340
          i32.store offset=152
          i32.const 288
          local.set 341
          local.get 4
          local.get 341
          i32.add
          local.set 342
          local.get 342
          local.set 343
          local.get 4
          local.get 343
          i32.store offset=156
          i32.const 284
          local.set 344
          local.get 4
          local.get 344
          i32.add
          local.set 345
          local.get 345
          local.set 346
          local.get 4
          local.get 346
          i32.store offset=160
          i32.const 1
          local.set 347
          local.get 4
          local.get 347
          i32.store offset=164
          local.get 4
          i32.load offset=312
          local.set 348
          i32.const 1
          local.set 349
          local.get 348
          local.get 349
          i32.sub
          local.set 350
          local.get 4
          local.get 350
          i32.store offset=168
          i32.const 144
          local.set 351
          local.get 4
          local.get 351
          i32.add
          local.set 352
          local.get 352
          local.set 353
          local.get 353
          call $worker_fn
          drop
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=324
        local.set 354
        i32.const 4
        local.set 355
        local.get 354
        local.get 355
        call $calloc
        local.set 356
        local.get 4
        local.get 356
        i32.store offset=140
        local.get 4
        i32.load offset=324
        local.set 357
        i32.const 28
        local.set 358
        local.get 357
        local.get 358
        call $calloc
        local.set 359
        local.get 4
        local.get 359
        i32.store offset=136
        local.get 4
        i32.load offset=140
        local.set 360
        i32.const 0
        local.set 361
        local.get 360
        local.set 362
        local.get 361
        local.set 363
        local.get 362
        local.get 363
        i32.ne
        local.set 364
        i32.const 1
        local.set 365
        local.get 364
        local.get 365
        i32.and
        local.set 366
        block  ;; label = @3
          block  ;; label = @4
            local.get 366
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=136
            local.set 367
            i32.const 0
            local.set 368
            local.get 367
            local.set 369
            local.get 368
            local.set 370
            local.get 369
            local.get 370
            i32.ne
            local.set 371
            i32.const 1
            local.set 372
            local.get 371
            local.get 372
            i32.and
            local.set 373
            local.get 373
            br_if 1 (;@3;)
          end
          i32.const 1540
          local.set 374
          local.get 374
          call $die
        end
        i32.const 0
        local.set 375
        local.get 4
        local.get 375
        i32.store offset=132
        block  ;; label = @3
          loop  ;; label = @4
            local.get 4
            i32.load offset=132
            local.set 376
            local.get 4
            i32.load offset=324
            local.set 377
            local.get 376
            local.set 378
            local.get 377
            local.set 379
            local.get 378
            local.get 379
            i32.lt_s
            local.set 380
            i32.const 1
            local.set 381
            local.get 380
            local.get 381
            i32.and
            local.set 382
            local.get 382
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load offset=132
            local.set 383
            local.get 4
            i32.load offset=188
            local.set 384
            local.get 383
            local.set 385
            local.get 384
            local.set 386
            local.get 385
            local.get 386
            i32.lt_s
            local.set 387
            i32.const 1
            local.set 388
            i32.const 0
            local.set 389
            i32.const 1
            local.set 390
            local.get 387
            local.get 390
            i32.and
            local.set 391
            local.get 388
            local.get 389
            local.get 391
            select
            local.set 392
            local.get 4
            local.get 392
            i32.store offset=128
            local.get 4
            i32.load offset=132
            local.set 393
            local.get 4
            i32.load offset=192
            local.set 394
            local.get 393
            local.get 394
            i32.mul
            local.set 395
            local.get 4
            i32.load offset=132
            local.set 396
            local.get 4
            i32.load offset=188
            local.set 397
            local.get 396
            local.set 398
            local.get 397
            local.set 399
            local.get 398
            local.get 399
            i32.lt_s
            local.set 400
            i32.const 1
            local.set 401
            local.get 400
            local.get 401
            i32.and
            local.set 402
            block  ;; label = @5
              block  ;; label = @6
                local.get 402
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.load offset=132
                local.set 403
                local.get 403
                local.set 404
                br 1 (;@5;)
              end
              local.get 4
              i32.load offset=188
              local.set 405
              local.get 405
              local.set 404
            end
            local.get 404
            local.set 406
            local.get 395
            local.get 406
            i32.add
            local.set 407
            local.get 4
            local.get 407
            i32.store offset=124
            local.get 4
            i32.load offset=124
            local.set 408
            i32.const 1
            local.set 409
            local.get 408
            local.get 409
            i32.add
            local.set 410
            local.get 4
            local.get 410
            i32.store offset=120
            local.get 4
            i32.load offset=120
            local.set 411
            local.get 4
            i32.load offset=192
            local.set 412
            local.get 411
            local.get 412
            i32.add
            local.set 413
            local.get 4
            i32.load offset=128
            local.set 414
            local.get 413
            local.get 414
            i32.add
            local.set 415
            local.get 4
            local.get 415
            i32.store offset=116
            local.get 4
            i32.load offset=132
            local.set 416
            local.get 4
            i32.load offset=136
            local.set 417
            local.get 4
            i32.load offset=132
            local.set 418
            i32.const 28
            local.set 419
            local.get 418
            local.get 419
            i32.mul
            local.set 420
            local.get 417
            local.get 420
            i32.add
            local.set 421
            local.get 421
            local.get 416
            i32.store
            local.get 4
            i32.load offset=136
            local.set 422
            local.get 4
            i32.load offset=132
            local.set 423
            i32.const 28
            local.set 424
            local.get 423
            local.get 424
            i32.mul
            local.set 425
            local.get 422
            local.get 425
            i32.add
            local.set 426
            i32.const 312
            local.set 427
            local.get 4
            local.get 427
            i32.add
            local.set 428
            local.get 428
            local.set 429
            local.get 426
            local.get 429
            i32.store offset=4
            local.get 4
            i32.load offset=136
            local.set 430
            local.get 4
            i32.load offset=132
            local.set 431
            i32.const 28
            local.set 432
            local.get 431
            local.get 432
            i32.mul
            local.set 433
            local.get 430
            local.get 433
            i32.add
            local.set 434
            i32.const 200
            local.set 435
            local.get 4
            local.get 435
            i32.add
            local.set 436
            local.get 436
            local.set 437
            local.get 434
            local.get 437
            i32.store offset=8
            local.get 4
            i32.load offset=136
            local.set 438
            local.get 4
            i32.load offset=132
            local.set 439
            i32.const 28
            local.set 440
            local.get 439
            local.get 440
            i32.mul
            local.set 441
            local.get 438
            local.get 441
            i32.add
            local.set 442
            i32.const 288
            local.set 443
            local.get 4
            local.get 443
            i32.add
            local.set 444
            local.get 444
            local.set 445
            local.get 442
            local.get 445
            i32.store offset=12
            local.get 4
            i32.load offset=136
            local.set 446
            local.get 4
            i32.load offset=132
            local.set 447
            i32.const 28
            local.set 448
            local.get 447
            local.get 448
            i32.mul
            local.set 449
            local.get 446
            local.get 449
            i32.add
            local.set 450
            i32.const 284
            local.set 451
            local.get 4
            local.get 451
            i32.add
            local.set 452
            local.get 452
            local.set 453
            local.get 450
            local.get 453
            i32.store offset=16
            local.get 4
            i32.load offset=120
            local.set 454
            local.get 4
            i32.load offset=136
            local.set 455
            local.get 4
            i32.load offset=132
            local.set 456
            i32.const 28
            local.set 457
            local.get 456
            local.get 457
            i32.mul
            local.set 458
            local.get 455
            local.get 458
            i32.add
            local.set 459
            local.get 459
            local.get 454
            i32.store offset=20
            local.get 4
            i32.load offset=116
            local.set 460
            local.get 4
            i32.load offset=136
            local.set 461
            local.get 4
            i32.load offset=132
            local.set 462
            i32.const 28
            local.set 463
            local.get 462
            local.get 463
            i32.mul
            local.set 464
            local.get 461
            local.get 464
            i32.add
            local.set 465
            local.get 465
            local.get 460
            i32.store offset=24
            local.get 4
            i32.load offset=140
            local.set 466
            local.get 4
            i32.load offset=132
            local.set 467
            i32.const 2
            local.set 468
            local.get 467
            local.get 468
            i32.shl
            local.set 469
            local.get 466
            local.get 469
            i32.add
            local.set 470
            local.get 4
            i32.load offset=136
            local.set 471
            local.get 4
            i32.load offset=132
            local.set 472
            i32.const 28
            local.set 473
            local.get 472
            local.get 473
            i32.mul
            local.set 474
            local.get 471
            local.get 474
            i32.add
            local.set 475
            i32.const 0
            local.set 476
            i32.const 1
            local.set 477
            local.get 470
            local.get 476
            local.get 477
            local.get 475
            call $__pthread_create
            local.set 478
            local.get 4
            local.get 478
            i32.store offset=112
            local.get 4
            i32.load offset=112
            local.set 479
            block  ;; label = @5
              local.get 479
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.load offset=112
              local.set 480
              i32.const 1481
              local.set 481
              local.get 481
              local.get 480
              call $die_errno
            end
            local.get 4
            i32.load offset=132
            local.set 482
            i32.const 1
            local.set 483
            local.get 482
            local.get 483
            i32.add
            local.set 484
            local.get 4
            local.get 484
            i32.store offset=132
            br 0 (;@4;)
          end
        end
        i32.const 0
        local.set 485
        local.get 4
        local.get 485
        i32.store offset=108
        block  ;; label = @3
          loop  ;; label = @4
            local.get 4
            i32.load offset=108
            local.set 486
            local.get 4
            i32.load offset=324
            local.set 487
            local.get 486
            local.set 488
            local.get 487
            local.set 489
            local.get 488
            local.get 489
            i32.lt_s
            local.set 490
            i32.const 1
            local.set 491
            local.get 490
            local.get 491
            i32.and
            local.set 492
            local.get 492
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load offset=140
            local.set 493
            local.get 4
            i32.load offset=108
            local.set 494
            i32.const 2
            local.set 495
            local.get 494
            local.get 495
            i32.shl
            local.set 496
            local.get 493
            local.get 496
            i32.add
            local.set 497
            local.get 497
            i32.load
            local.set 498
            i32.const 0
            local.set 499
            local.get 498
            local.get 499
            call $__pthread_join
            local.set 500
            local.get 4
            local.get 500
            i32.store offset=104
            local.get 4
            i32.load offset=104
            local.set 501
            block  ;; label = @5
              local.get 501
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              i32.load offset=104
              local.set 502
              i32.const 1406
              local.set 503
              local.get 503
              local.get 502
              call $die_errno
            end
            local.get 4
            i32.load offset=108
            local.set 504
            i32.const 1
            local.set 505
            local.get 504
            local.get 505
            i32.add
            local.set 506
            local.get 4
            local.get 506
            i32.store offset=108
            br 0 (;@4;)
          end
        end
        local.get 4
        i32.load offset=140
        local.set 507
        local.get 507
        call $free
        local.get 4
        i32.load offset=136
        local.set 508
        local.get 508
        call $free
      end
      call $now_ns
      local.set 509
      local.get 4
      local.get 509
      i64.store offset=96
      local.get 4
      i32.load offset=288
      local.set 510
      i32.const 312
      local.set 511
      local.get 4
      local.get 511
      i32.add
      local.set 512
      local.get 512
      local.set 513
      local.get 510
      local.get 513
      call $checksum
      local.set 514
      local.get 4
      local.get 514
      f64.store offset=88
      i32.const 0
      local.set 515
      local.get 515
      i32.load offset=4832
      local.set 516
      local.get 4
      f64.load offset=88
      local.set 517
      local.get 4
      local.get 517
      f64.store offset=16
      i32.const 2157
      local.set 518
      i32.const 16
      local.set 519
      local.get 4
      local.get 519
      i32.add
      local.set 520
      local.get 516
      local.get 518
      local.get 520
      call $fprintf
      drop
      local.get 4
      i64.load offset=176
      local.set 521
      i64.const 0
      local.set 522
      local.get 521
      local.set 523
      local.get 522
      local.set 524
      local.get 523
      local.get 524
      i64.ne
      local.set 525
      i32.const 1
      local.set 526
      local.get 525
      local.get 526
      i32.and
      local.set 527
      block  ;; label = @2
        local.get 527
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i64.load offset=96
        local.set 528
        i64.const 0
        local.set 529
        local.get 528
        local.set 530
        local.get 529
        local.set 531
        local.get 530
        local.get 531
        i64.ne
        local.set 532
        i32.const 1
        local.set 533
        local.get 532
        local.get 533
        i32.and
        local.set 534
        local.get 534
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i64.load offset=96
        local.set 535
        local.get 4
        i64.load offset=176
        local.set 536
        local.get 535
        local.set 537
        local.get 536
        local.set 538
        local.get 537
        local.get 538
        i64.ge_u
        local.set 539
        i32.const 1
        local.set 540
        local.get 539
        local.get 540
        i32.and
        local.set 541
        local.get 541
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i64.load offset=96
        local.set 542
        local.get 4
        i64.load offset=176
        local.set 543
        local.get 542
        local.get 543
        i64.sub
        local.set 544
        local.get 544
        f64.convert_i64_u
        local.set 545
        f64.const 0x1.dcd65p+29 (;=1e+09;)
        local.set 546
        local.get 545
        local.get 546
        f64.div
        local.set 547
        local.get 4
        local.get 547
        f64.store offset=80
        i32.const 0
        local.set 548
        local.get 548
        i32.load offset=4832
        local.set 549
        local.get 4
        f64.load offset=80
        local.set 550
        local.get 4
        local.get 550
        f64.store
        i32.const 2142
        local.set 551
        local.get 549
        local.get 551
        local.get 4
        call $fprintf
        drop
      end
      i32.const 200
      local.set 552
      local.get 4
      local.get 552
      i32.add
      local.set 553
      local.get 553
      local.set 554
      local.get 554
      call $barrier_destroy
      local.get 4
      i32.load offset=296
      local.set 555
      local.get 555
      call $free
      local.get 4
      i32.load offset=292
      local.set 556
      local.get 556
      call $free
      i32.const 0
      local.set 557
      local.get 4
      local.get 557
      i32.store offset=412
    end
    local.get 4
    i32.load offset=412
    local.set 558
    i32.const 416
    local.set 559
    local.get 4
    local.get 559
    i32.add
    local.set 560
    local.get 560
    global.set $__stack_pointer
    local.get 558
    return)
  (func $usage (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    i32.const 0
    local.set 4
    local.get 4
    i32.load offset=4828
    local.set 5
    local.get 3
    i32.load offset=12
    local.set 6
    local.get 3
    i32.load offset=12
    local.set 7
    local.get 3
    i32.load offset=12
    local.set 8
    local.get 3
    local.get 8
    i32.store offset=8
    local.get 3
    local.get 7
    i32.store offset=4
    local.get 3
    local.get 6
    i32.store
    i32.const 2313
    local.set 9
    local.get 5
    local.get 9
    local.get 3
    call $fprintf
    drop
    i32.const 16
    local.set 10
    local.get 3
    local.get 10
    i32.add
    local.set 11
    local.get 11
    global.set $__stack_pointer
    return)
  (func $parse_ll (type 11) (param i32 i32) (result i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=24
    i32.const 0
    local.set 5
    global.get $__tls_base
    local.set 6
    local.get 6
    local.get 5
    i32.add
    local.set 7
    i32.const 0
    local.set 8
    local.get 7
    local.get 8
    i32.store
    i32.const 0
    local.set 9
    local.get 4
    local.get 9
    i32.store offset=20
    local.get 4
    i32.load offset=28
    local.set 10
    i32.const 20
    local.set 11
    local.get 4
    local.get 11
    i32.add
    local.set 12
    local.get 12
    local.set 13
    i32.const 10
    local.set 14
    local.get 10
    local.get 13
    local.get 14
    call $strtoll
    local.set 15
    local.get 4
    local.get 15
    i64.store offset=8
    i32.const 0
    local.set 16
    global.get $__tls_base
    local.set 17
    local.get 17
    local.get 16
    i32.add
    local.set 18
    local.get 18
    i32.load
    local.set 19
    block  ;; label = @1
      block  ;; label = @2
        local.get 19
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=20
        local.set 20
        local.get 4
        i32.load offset=28
        local.set 21
        local.get 20
        local.set 22
        local.get 21
        local.set 23
        local.get 22
        local.get 23
        i32.eq
        local.set 24
        i32.const 1
        local.set 25
        local.get 24
        local.get 25
        i32.and
        local.set 26
        local.get 26
        br_if 0 (;@2;)
        local.get 4
        i32.load offset=20
        local.set 27
        local.get 27
        i32.load8_u
        local.set 28
        i32.const 24
        local.set 29
        local.get 28
        local.get 29
        i32.shl
        local.set 30
        local.get 30
        local.get 29
        i32.shr_s
        local.set 31
        local.get 31
        i32.eqz
        br_if 1 (;@1;)
      end
      i32.const 0
      local.set 32
      local.get 32
      i32.load offset=4828
      local.set 33
      local.get 4
      i32.load offset=24
      local.set 34
      local.get 4
      i32.load offset=28
      local.set 35
      local.get 4
      local.get 35
      i32.store offset=4
      local.get 4
      local.get 34
      i32.store
      i32.const 3093
      local.set 36
      local.get 33
      local.get 36
      local.get 4
      call $fprintf
      drop
      i32.const 1
      local.set 37
      local.get 37
      call $exit
      unreachable
    end
    local.get 4
    i64.load offset=8
    local.set 38
    i32.const 32
    local.set 39
    local.get 4
    local.get 39
    i32.add
    local.set 40
    local.get 40
    global.set $__stack_pointer
    local.get 38
    return)
  (func $die (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
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
    i32.const 0
    local.set 4
    local.get 4
    i32.load offset=4828
    local.set 5
    local.get 3
    i32.load offset=12
    local.set 6
    local.get 3
    local.get 6
    i32.store
    i32.const 2131
    local.set 7
    local.get 5
    local.get 7
    local.get 3
    call $fprintf
    drop
    i32.const 1
    local.set 8
    local.get 8
    call $exit
    unreachable)
  (func $parse_stress (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 4
    i32.const 0
    local.set 5
    local.get 4
    local.set 6
    local.get 5
    local.set 7
    local.get 6
    local.get 7
    i32.ne
    local.set 8
    i32.const 1
    local.set 9
    local.get 8
    local.get 9
    i32.and
    local.set 10
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 10
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=8
          local.set 11
          i32.const 1496
          local.set 12
          local.get 11
          local.get 12
          call $strcmp
          local.set 13
          local.get 13
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 14
        local.get 3
        local.get 14
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=8
      local.set 15
      i32.const 1379
      local.set 16
      local.get 15
      local.get 16
      call $strcmp
      local.set 17
      block  ;; label = @2
        local.get 17
        br_if 0 (;@2;)
        i32.const 1
        local.set 18
        local.get 3
        local.get 18
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=8
      local.set 19
      i32.const 1184
      local.set 20
      local.get 19
      local.get 20
      call $strcmp
      local.set 21
      block  ;; label = @2
        local.get 21
        br_if 0 (;@2;)
        i32.const 2
        local.set 22
        local.get 3
        local.get 22
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=8
      local.set 23
      i32.const 1521
      local.set 24
      local.get 23
      local.get 24
      call $strcmp
      local.set 25
      block  ;; label = @2
        local.get 25
        br_if 0 (;@2;)
        i32.const 3
        local.set 26
        local.get 3
        local.get 26
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 3
      i32.load offset=8
      local.set 27
      i32.const 1414
      local.set 28
      local.get 27
      local.get 28
      call $strcmp
      local.set 29
      block  ;; label = @2
        local.get 29
        br_if 0 (;@2;)
        i32.const 4
        local.set 30
        local.get 3
        local.get 30
        i32.store offset=12
        br 1 (;@1;)
      end
      i32.const 0
      local.set 31
      local.get 31
      i32.load offset=4828
      local.set 32
      local.get 3
      i32.load offset=8
      local.set 33
      local.get 3
      local.get 33
      i32.store
      i32.const 3031
      local.set 34
      local.get 32
      local.get 34
      local.get 3
      call $fprintf
      drop
      i32.const 1
      local.set 35
      local.get 35
      call $exit
      unreachable
    end
    local.get 3
    i32.load offset=12
    local.set 36
    i32.const 16
    local.set 37
    local.get 3
    local.get 37
    i32.add
    local.set 38
    local.get 38
    global.set $__stack_pointer
    local.get 36
    return)
  (func $stress_name (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 4
    i32.const 4
    local.set 5
    local.get 4
    local.get 5
    i32.gt_u
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  br_table 0 (;@7;) 1 (;@6;) 2 (;@5;) 3 (;@4;) 4 (;@3;) 5 (;@2;)
                end
                i32.const 1496
                local.set 6
                local.get 3
                local.get 6
                i32.store offset=12
                br 5 (;@1;)
              end
              i32.const 1379
              local.set 7
              local.get 3
              local.get 7
              i32.store offset=12
              br 4 (;@1;)
            end
            i32.const 1184
            local.set 8
            local.get 3
            local.get 8
            i32.store offset=12
            br 3 (;@1;)
          end
          i32.const 1521
          local.set 9
          local.get 3
          local.get 9
          i32.store offset=12
          br 2 (;@1;)
        end
        i32.const 1414
        local.set 10
        local.get 3
        local.get 10
        i32.store offset=12
        br 1 (;@1;)
      end
      i32.const 1398
      local.set 11
      local.get 3
      local.get 11
      i32.store offset=12
    end
    local.get 3
    i32.load offset=12
    local.set 12
    local.get 12
    return)
  (func $init_grid (type 12) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 48
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.store offset=44
    local.get 5
    local.get 1
    i32.store offset=40
    local.get 5
    local.get 2
    i32.store offset=36
    local.get 5
    i32.load offset=36
    local.set 6
    local.get 6
    i32.load
    local.set 7
    local.get 5
    local.get 7
    i32.store offset=32
    local.get 5
    i32.load offset=36
    local.set 8
    local.get 8
    i32.load offset=4
    local.set 9
    local.get 5
    local.get 9
    i32.store offset=28
    i32.const 0
    local.set 10
    local.get 5
    local.get 10
    i32.store offset=24
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=24
        local.set 11
        local.get 5
        i32.load offset=32
        local.set 12
        local.get 11
        local.set 13
        local.get 12
        local.set 14
        local.get 13
        local.get 14
        i32.lt_s
        local.set 15
        i32.const 1
        local.set 16
        local.get 15
        local.get 16
        i32.and
        local.set 17
        local.get 17
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 18
        local.get 5
        local.get 18
        i32.store offset=20
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            i32.load offset=20
            local.set 19
            local.get 5
            i32.load offset=28
            local.set 20
            local.get 19
            local.set 21
            local.get 20
            local.set 22
            local.get 21
            local.get 22
            i32.lt_s
            local.set 23
            i32.const 1
            local.set 24
            local.get 23
            local.get 24
            i32.and
            local.set 25
            local.get 25
            i32.eqz
            br_if 1 (;@3;)
            i32.const 0
            local.set 26
            local.get 26
            f64.convert_i32_s
            local.set 27
            local.get 5
            local.get 27
            f64.store offset=8
            local.get 5
            i32.load offset=24
            local.set 28
            local.get 5
            i32.load offset=36
            local.set 29
            local.get 29
            i32.load offset=56
            local.set 30
            local.get 28
            local.set 31
            local.get 30
            local.set 32
            local.get 31
            local.get 32
            i32.ge_s
            local.set 33
            i32.const 1
            local.set 34
            local.get 33
            local.get 34
            i32.and
            local.set 35
            block  ;; label = @5
              local.get 35
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.load offset=24
              local.set 36
              local.get 5
              i32.load offset=36
              local.set 37
              local.get 37
              i32.load offset=60
              local.set 38
              local.get 36
              local.set 39
              local.get 38
              local.set 40
              local.get 39
              local.get 40
              i32.lt_s
              local.set 41
              i32.const 1
              local.set 42
              local.get 41
              local.get 42
              i32.and
              local.set 43
              local.get 43
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.load offset=20
              local.set 44
              local.get 5
              i32.load offset=36
              local.set 45
              local.get 45
              i32.load offset=64
              local.set 46
              local.get 44
              local.set 47
              local.get 46
              local.set 48
              local.get 47
              local.get 48
              i32.ge_s
              local.set 49
              i32.const 1
              local.set 50
              local.get 49
              local.get 50
              i32.and
              local.set 51
              local.get 51
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.load offset=20
              local.set 52
              local.get 5
              i32.load offset=36
              local.set 53
              local.get 53
              i32.load offset=68
              local.set 54
              local.get 52
              local.set 55
              local.get 54
              local.set 56
              local.get 55
              local.get 56
              i32.lt_s
              local.set 57
              i32.const 1
              local.set 58
              local.get 57
              local.get 58
              i32.and
              local.set 59
              local.get 59
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              i32.load offset=36
              local.set 60
              local.get 60
              f64.load offset=72
              local.set 61
              local.get 5
              local.get 61
              f64.store offset=8
            end
            local.get 5
            f64.load offset=8
            local.set 62
            local.get 5
            i32.load offset=44
            local.set 63
            local.get 5
            i32.load offset=24
            local.set 64
            local.get 5
            i32.load offset=20
            local.set 65
            local.get 5
            i32.load offset=28
            local.set 66
            local.get 64
            local.get 65
            local.get 66
            call $idx2
            local.set 67
            i32.const 3
            local.set 68
            local.get 67
            local.get 68
            i32.shl
            local.set 69
            local.get 63
            local.get 69
            i32.add
            local.set 70
            local.get 70
            local.get 62
            f64.store
            local.get 5
            f64.load offset=8
            local.set 71
            local.get 5
            i32.load offset=40
            local.set 72
            local.get 5
            i32.load offset=24
            local.set 73
            local.get 5
            i32.load offset=20
            local.set 74
            local.get 5
            i32.load offset=28
            local.set 75
            local.get 73
            local.get 74
            local.get 75
            call $idx2
            local.set 76
            i32.const 3
            local.set 77
            local.get 76
            local.get 77
            i32.shl
            local.set 78
            local.get 72
            local.get 78
            i32.add
            local.set 79
            local.get 79
            local.get 71
            f64.store
            local.get 5
            i32.load offset=20
            local.set 80
            i32.const 1
            local.set 81
            local.get 80
            local.get 81
            i32.add
            local.set 82
            local.get 5
            local.get 82
            i32.store offset=20
            br 0 (;@4;)
          end
        end
        local.get 5
        i32.load offset=24
        local.set 83
        i32.const 1
        local.set 84
        local.get 83
        local.get 84
        i32.add
        local.set 85
        local.get 5
        local.get 85
        i32.store offset=24
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 86
    local.get 5
    local.get 86
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load offset=4
        local.set 87
        local.get 5
        i32.load offset=32
        local.set 88
        local.get 87
        local.set 89
        local.get 88
        local.set 90
        local.get 89
        local.get 90
        i32.lt_s
        local.set 91
        i32.const 1
        local.set 92
        local.get 91
        local.get 92
        i32.and
        local.set 93
        local.get 93
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=44
        local.set 94
        local.get 5
        i32.load offset=4
        local.set 95
        local.get 5
        i32.load offset=28
        local.set 96
        i32.const 0
        local.set 97
        local.get 95
        local.get 97
        local.get 96
        call $idx2
        local.set 98
        i32.const 3
        local.set 99
        local.get 98
        local.get 99
        i32.shl
        local.set 100
        local.get 94
        local.get 100
        i32.add
        local.set 101
        i32.const 0
        local.set 102
        local.get 102
        f64.convert_i32_s
        local.set 103
        local.get 101
        local.get 103
        f64.store
        local.get 5
        i32.load offset=44
        local.set 104
        local.get 5
        i32.load offset=4
        local.set 105
        local.get 5
        i32.load offset=28
        local.set 106
        i32.const 1
        local.set 107
        local.get 106
        local.get 107
        i32.sub
        local.set 108
        local.get 5
        i32.load offset=28
        local.set 109
        local.get 105
        local.get 108
        local.get 109
        call $idx2
        local.set 110
        i32.const 3
        local.set 111
        local.get 110
        local.get 111
        i32.shl
        local.set 112
        local.get 104
        local.get 112
        i32.add
        local.set 113
        i32.const 0
        local.set 114
        local.get 114
        f64.convert_i32_s
        local.set 115
        local.get 113
        local.get 115
        f64.store
        local.get 5
        i32.load offset=40
        local.set 116
        local.get 5
        i32.load offset=4
        local.set 117
        local.get 5
        i32.load offset=28
        local.set 118
        i32.const 0
        local.set 119
        local.get 117
        local.get 119
        local.get 118
        call $idx2
        local.set 120
        i32.const 3
        local.set 121
        local.get 120
        local.get 121
        i32.shl
        local.set 122
        local.get 116
        local.get 122
        i32.add
        local.set 123
        i32.const 0
        local.set 124
        local.get 124
        f64.convert_i32_s
        local.set 125
        local.get 123
        local.get 125
        f64.store
        local.get 5
        i32.load offset=40
        local.set 126
        local.get 5
        i32.load offset=4
        local.set 127
        local.get 5
        i32.load offset=28
        local.set 128
        i32.const 1
        local.set 129
        local.get 128
        local.get 129
        i32.sub
        local.set 130
        local.get 5
        i32.load offset=28
        local.set 131
        local.get 127
        local.get 130
        local.get 131
        call $idx2
        local.set 132
        i32.const 3
        local.set 133
        local.get 132
        local.get 133
        i32.shl
        local.set 134
        local.get 126
        local.get 134
        i32.add
        local.set 135
        i32.const 0
        local.set 136
        local.get 136
        f64.convert_i32_s
        local.set 137
        local.get 135
        local.get 137
        f64.store
        local.get 5
        i32.load offset=4
        local.set 138
        i32.const 1
        local.set 139
        local.get 138
        local.get 139
        i32.add
        local.set 140
        local.get 5
        local.get 140
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 141
    local.get 5
    local.get 141
    i32.store
    block  ;; label = @1
      loop  ;; label = @2
        local.get 5
        i32.load
        local.set 142
        local.get 5
        i32.load offset=28
        local.set 143
        local.get 142
        local.set 144
        local.get 143
        local.set 145
        local.get 144
        local.get 145
        i32.lt_s
        local.set 146
        i32.const 1
        local.set 147
        local.get 146
        local.get 147
        i32.and
        local.set 148
        local.get 148
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        i32.load offset=44
        local.set 149
        local.get 5
        i32.load
        local.set 150
        local.get 5
        i32.load offset=28
        local.set 151
        i32.const 0
        local.set 152
        local.get 152
        local.get 150
        local.get 151
        call $idx2
        local.set 153
        i32.const 3
        local.set 154
        local.get 153
        local.get 154
        i32.shl
        local.set 155
        local.get 149
        local.get 155
        i32.add
        local.set 156
        i32.const 0
        local.set 157
        local.get 157
        f64.convert_i32_s
        local.set 158
        local.get 156
        local.get 158
        f64.store
        local.get 5
        i32.load offset=44
        local.set 159
        local.get 5
        i32.load offset=32
        local.set 160
        i32.const 1
        local.set 161
        local.get 160
        local.get 161
        i32.sub
        local.set 162
        local.get 5
        i32.load
        local.set 163
        local.get 5
        i32.load offset=28
        local.set 164
        local.get 162
        local.get 163
        local.get 164
        call $idx2
        local.set 165
        i32.const 3
        local.set 166
        local.get 165
        local.get 166
        i32.shl
        local.set 167
        local.get 159
        local.get 167
        i32.add
        local.set 168
        i32.const 0
        local.set 169
        local.get 169
        f64.convert_i32_s
        local.set 170
        local.get 168
        local.get 170
        f64.store
        local.get 5
        i32.load offset=40
        local.set 171
        local.get 5
        i32.load
        local.set 172
        local.get 5
        i32.load offset=28
        local.set 173
        i32.const 0
        local.set 174
        local.get 174
        local.get 172
        local.get 173
        call $idx2
        local.set 175
        i32.const 3
        local.set 176
        local.get 175
        local.get 176
        i32.shl
        local.set 177
        local.get 171
        local.get 177
        i32.add
        local.set 178
        i32.const 0
        local.set 179
        local.get 179
        f64.convert_i32_s
        local.set 180
        local.get 178
        local.get 180
        f64.store
        local.get 5
        i32.load offset=40
        local.set 181
        local.get 5
        i32.load offset=32
        local.set 182
        i32.const 1
        local.set 183
        local.get 182
        local.get 183
        i32.sub
        local.set 184
        local.get 5
        i32.load
        local.set 185
        local.get 5
        i32.load offset=28
        local.set 186
        local.get 184
        local.get 185
        local.get 186
        call $idx2
        local.set 187
        i32.const 3
        local.set 188
        local.get 187
        local.get 188
        i32.shl
        local.set 189
        local.get 181
        local.get 189
        i32.add
        local.set 190
        i32.const 0
        local.set 191
        local.get 191
        f64.convert_i32_s
        local.set 192
        local.get 190
        local.get 192
        f64.store
        local.get 5
        i32.load
        local.set 193
        i32.const 1
        local.set 194
        local.get 193
        local.get 194
        i32.add
        local.set 195
        local.get 5
        local.get 195
        i32.store
        br 0 (;@2;)
      end
    end
    i32.const 48
    local.set 196
    local.get 5
    local.get 196
    i32.add
    local.set 197
    local.get 197
    global.set $__stack_pointer
    return)
  (func $barrier_init (type 10) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    i32.const 0
    local.set 6
    local.get 5
    local.set 7
    local.get 6
    local.set 8
    local.get 7
    local.get 8
    i32.le_s
    local.set 9
    i32.const 1
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    block  ;; label = @1
      local.get 11
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1634
      local.set 12
      local.get 12
      call $die
    end
    local.get 4
    i32.load offset=12
    local.set 13
    i32.const 0
    local.set 14
    local.get 13
    local.get 14
    call $pthread_mutex_init
    local.set 15
    local.get 4
    local.get 15
    i32.store offset=4
    block  ;; label = @1
      local.get 15
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=4
      local.set 16
      i32.const 1242
      local.set 17
      local.get 17
      local.get 16
      call $die_errno
    end
    local.get 4
    i32.load offset=12
    local.set 18
    i32.const 24
    local.set 19
    local.get 18
    local.get 19
    i32.add
    local.set 20
    i32.const 0
    local.set 21
    local.get 20
    local.get 21
    call $pthread_cond_init
    local.set 22
    local.get 4
    local.get 22
    i32.store offset=4
    block  ;; label = @1
      local.get 22
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=4
      local.set 23
      i32.const 1261
      local.set 24
      local.get 24
      local.get 23
      call $die_errno
    end
    local.get 4
    i32.load offset=8
    local.set 25
    local.get 4
    i32.load offset=12
    local.set 26
    local.get 26
    local.get 25
    i32.store offset=72
    local.get 4
    i32.load offset=12
    local.set 27
    i32.const 0
    local.set 28
    local.get 27
    local.get 28
    i32.store offset=76
    local.get 4
    i32.load offset=12
    local.set 29
    i32.const 0
    local.set 30
    local.get 29
    local.get 30
    i32.store offset=80
    i32.const 16
    local.set 31
    local.get 4
    local.get 31
    i32.add
    local.set 32
    local.get 32
    global.set $__stack_pointer
    return)
  (func $now_ns (type 13) (result i64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i64 i64 i64 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 32
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 3112
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=4
    i32.const 3112
    local.set 4
    i32.const 8
    local.set 5
    local.get 2
    local.get 5
    i32.add
    local.set 6
    local.get 6
    local.set 7
    local.get 4
    local.get 7
    call $__clock_gettime
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        local.get 8
        i32.eqz
        br_if 0 (;@2;)
        i64.const 0
        local.set 9
        local.get 2
        local.get 9
        i64.store offset=24
        br 1 (;@1;)
      end
      local.get 2
      i64.load offset=8
      local.set 10
      i64.const 1000000000
      local.set 11
      local.get 10
      local.get 11
      i64.mul
      local.set 12
      local.get 2
      i32.load offset=16
      local.set 13
      local.get 13
      local.set 14
      local.get 14
      i64.extend_i32_s
      local.set 15
      local.get 12
      local.get 15
      i64.add
      local.set 16
      local.get 2
      local.get 16
      i64.store offset=24
    end
    local.get 2
    i64.load offset=24
    local.set 17
    i32.const 32
    local.set 18
    local.get 2
    local.get 18
    i32.add
    local.set 19
    local.get 19
    global.set $__stack_pointer
    local.get 17
    return)
  (func $worker_fn (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    local.get 3
    local.get 4
    i32.store offset=24
    local.get 3
    i32.load offset=24
    local.set 5
    local.get 5
    i32.load offset=4
    local.set 6
    local.get 3
    local.get 6
    i32.store offset=20
    i32.const 1
    local.set 7
    local.get 3
    local.get 7
    i32.store offset=16
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=16
        local.set 8
        local.get 3
        i32.load offset=20
        local.set 9
        local.get 9
        i32.load offset=8
        local.set 10
        local.get 8
        local.set 11
        local.get 10
        local.set 12
        local.get 11
        local.get 12
        i32.le_s
        local.set 13
        i32.const 1
        local.set 14
        local.get 13
        local.get 14
        i32.and
        local.set 15
        local.get 15
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=24
        local.set 16
        local.get 16
        i32.load offset=12
        local.set 17
        local.get 17
        i32.load
        local.set 18
        local.get 3
        local.get 18
        i32.store offset=12
        local.get 3
        i32.load offset=24
        local.set 19
        local.get 19
        i32.load offset=16
        local.set 20
        local.get 20
        i32.load
        local.set 21
        local.get 3
        local.get 21
        i32.store offset=8
        local.get 3
        i32.load offset=12
        local.set 22
        local.get 3
        i32.load offset=8
        local.set 23
        local.get 3
        i32.load offset=20
        local.set 24
        local.get 3
        i32.load offset=24
        local.set 25
        local.get 25
        i32.load offset=20
        local.set 26
        local.get 3
        i32.load offset=24
        local.set 27
        local.get 27
        i32.load offset=24
        local.set 28
        local.get 22
        local.get 23
        local.get 24
        local.get 26
        local.get 28
        call $jacobi_update
        local.get 3
        i32.load offset=24
        local.set 29
        local.get 29
        i32.load offset=8
        local.set 30
        local.get 30
        call $barrier_wait
        local.get 3
        i32.load offset=20
        local.set 31
        local.get 3
        i32.load offset=24
        local.set 32
        local.get 32
        i32.load offset=8
        local.set 33
        local.get 3
        i32.load offset=16
        local.set 34
        local.get 3
        i32.load offset=24
        local.set 35
        local.get 35
        i32.load
        local.set 36
        local.get 31
        local.get 33
        local.get 34
        local.get 36
        call $stress_phase
        local.get 3
        i32.load offset=24
        local.set 37
        local.get 37
        i32.load
        local.set 38
        block  ;; label = @3
          local.get 38
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=24
          local.set 39
          local.get 39
          i32.load offset=12
          local.set 40
          local.get 40
          i32.load
          local.set 41
          local.get 3
          local.get 41
          i32.store offset=4
          local.get 3
          i32.load offset=24
          local.set 42
          local.get 42
          i32.load offset=16
          local.set 43
          local.get 43
          i32.load
          local.set 44
          local.get 3
          i32.load offset=24
          local.set 45
          local.get 45
          i32.load offset=12
          local.set 46
          local.get 46
          local.get 44
          i32.store
          local.get 3
          i32.load offset=4
          local.set 47
          local.get 3
          i32.load offset=24
          local.set 48
          local.get 48
          i32.load offset=16
          local.set 49
          local.get 49
          local.get 47
          i32.store
          local.get 3
          i32.load offset=20
          local.set 50
          local.get 3
          i32.load offset=16
          local.set 51
          local.get 3
          i32.load offset=24
          local.set 52
          local.get 52
          i32.load
          local.set 53
          i32.const 1387
          local.set 54
          local.get 50
          local.get 51
          local.get 54
          local.get 53
          call $maybe_checkpoint
          local.get 3
          i32.load offset=20
          local.set 55
          local.get 55
          i32.load offset=44
          local.set 56
          i32.const 0
          local.set 57
          local.get 56
          local.set 58
          local.get 57
          local.set 59
          local.get 58
          local.get 59
          i32.gt_s
          local.set 60
          i32.const 1
          local.set 61
          local.get 60
          local.get 61
          i32.and
          local.set 62
          block  ;; label = @4
            local.get 62
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=16
            local.set 63
            local.get 3
            i32.load offset=20
            local.set 64
            local.get 64
            i32.load offset=44
            local.set 65
            local.get 63
            local.get 65
            i32.rem_s
            local.set 66
            local.get 66
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=24
            local.set 67
            local.get 67
            i32.load offset=12
            local.set 68
            local.get 68
            i32.load
            local.set 69
            local.get 3
            i32.load offset=20
            local.set 70
            local.get 69
            local.get 70
            call $print_samples
          end
        end
        local.get 3
        i32.load offset=24
        local.set 71
        local.get 71
        i32.load offset=8
        local.set 72
        local.get 72
        call $barrier_wait
        local.get 3
        i32.load offset=16
        local.set 73
        i32.const 1
        local.set 74
        local.get 73
        local.get 74
        i32.add
        local.set 75
        local.get 3
        local.get 75
        i32.store offset=16
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 76
    i32.const 32
    local.set 77
    local.get 3
    local.get 77
    i32.add
    local.set 78
    local.get 78
    global.set $__stack_pointer
    local.get 76
    return)
  (func $die_errno (type 10) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    i32.const 0
    local.set 5
    local.get 5
    i32.load offset=4828
    local.set 6
    local.get 4
    i32.load offset=12
    local.set 7
    local.get 4
    i32.load offset=8
    local.set 8
    local.get 8
    call $strerror
    local.set 9
    local.get 4
    local.get 9
    i32.store offset=4
    local.get 4
    local.get 7
    i32.store
    i32.const 2116
    local.set 10
    local.get 6
    local.get 10
    local.get 4
    call $fprintf
    drop
    i32.const 1
    local.set 11
    local.get 11
    call $exit
    unreachable)
  (func $checksum (type 14) (param i32 i32) (result f64)
    (local i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 i32 i32 i32 i32 i32 i32 f64 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 32
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=28
    local.get 4
    local.get 1
    i32.store offset=24
    local.get 4
    i32.load offset=24
    local.set 5
    local.get 5
    i32.load
    local.set 6
    local.get 4
    local.get 6
    i32.store offset=20
    local.get 4
    i32.load offset=24
    local.set 7
    local.get 7
    i32.load offset=4
    local.set 8
    local.get 4
    local.get 8
    i32.store offset=16
    i32.const 0
    local.set 9
    local.get 9
    f64.convert_i32_s
    local.set 10
    local.get 4
    local.get 10
    f64.store offset=8
    i32.const 0
    local.set 11
    local.get 4
    local.get 11
    i32.store offset=4
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=4
        local.set 12
        local.get 4
        i32.load offset=20
        local.set 13
        local.get 12
        local.set 14
        local.get 13
        local.set 15
        local.get 14
        local.get 15
        i32.lt_s
        local.set 16
        i32.const 1
        local.set 17
        local.get 16
        local.get 17
        i32.and
        local.set 18
        local.get 18
        i32.eqz
        br_if 1 (;@1;)
        i32.const 0
        local.set 19
        local.get 4
        local.get 19
        i32.store
        block  ;; label = @3
          loop  ;; label = @4
            local.get 4
            i32.load
            local.set 20
            local.get 4
            i32.load offset=16
            local.set 21
            local.get 20
            local.set 22
            local.get 21
            local.set 23
            local.get 22
            local.get 23
            i32.lt_s
            local.set 24
            i32.const 1
            local.set 25
            local.get 24
            local.get 25
            i32.and
            local.set 26
            local.get 26
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            i32.load offset=28
            local.set 27
            local.get 4
            i32.load offset=4
            local.set 28
            local.get 4
            i32.load
            local.set 29
            local.get 4
            i32.load offset=16
            local.set 30
            local.get 28
            local.get 29
            local.get 30
            call $idx2
            local.set 31
            i32.const 3
            local.set 32
            local.get 31
            local.get 32
            i32.shl
            local.set 33
            local.get 27
            local.get 33
            i32.add
            local.set 34
            local.get 34
            f64.load
            local.set 35
            local.get 4
            i32.load offset=4
            local.set 36
            i32.const 1315423911
            local.set 37
            local.get 36
            local.get 37
            i32.mul
            local.set 38
            local.get 4
            i32.load
            local.set 39
            i32.const -1640531535
            local.set 40
            local.get 39
            local.get 40
            i32.mul
            local.set 41
            local.get 38
            local.get 41
            i32.add
            local.set 42
            local.get 42
            f64.convert_i32_u
            local.set 43
            f64.const 0x1.12e0be826d695p-30 (;=1e-09;)
            local.set 44
            local.get 43
            local.get 44
            f64.mul
            local.set 45
            f64.const 0x1p+0 (;=1;)
            local.set 46
            local.get 45
            local.get 46
            f64.add
            local.set 47
            local.get 4
            f64.load offset=8
            local.set 48
            local.get 35
            local.get 47
            f64.mul
            local.set 49
            local.get 49
            local.get 48
            f64.add
            local.set 50
            local.get 4
            local.get 50
            f64.store offset=8
            local.get 4
            i32.load
            local.set 51
            i32.const 1
            local.set 52
            local.get 51
            local.get 52
            i32.add
            local.set 53
            local.get 4
            local.get 53
            i32.store
            br 0 (;@4;)
          end
        end
        local.get 4
        i32.load offset=4
        local.set 54
        i32.const 1
        local.set 55
        local.get 54
        local.get 55
        i32.add
        local.set 56
        local.get 4
        local.get 56
        i32.store offset=4
        br 0 (;@2;)
      end
    end
    local.get 4
    f64.load offset=8
    local.set 57
    i32.const 32
    local.set 58
    local.get 4
    local.get 58
    i32.add
    local.set 59
    local.get 59
    global.set $__stack_pointer
    local.get 57
    return)
  (func $barrier_destroy (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    local.get 4
    call $pthread_mutex_destroy
    drop
    local.get 3
    i32.load offset=12
    local.set 5
    i32.const 24
    local.set 6
    local.get 5
    local.get 6
    i32.add
    local.set 7
    local.get 7
    call $pthread_cond_destroy
    drop
    i32.const 16
    local.set 8
    local.get 3
    local.get 8
    i32.add
    local.set 9
    local.get 9
    global.set $__stack_pointer
    return)
  (func $idx2 (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 3
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.sub
    local.set 5
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 2
    i32.store offset=4
    local.get 5
    i32.load offset=12
    local.set 6
    local.get 5
    i32.load offset=4
    local.set 7
    local.get 6
    local.get 7
    i32.mul
    local.set 8
    local.get 5
    i32.load offset=8
    local.set 9
    local.get 8
    local.get 9
    i32.add
    local.set 10
    local.get 10
    return)
  (func $jacobi_update (type 15) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 5
    i32.const 112
    local.set 6
    local.get 5
    local.get 6
    i32.sub
    local.set 7
    local.get 7
    local.get 0
    i32.store offset=108
    local.get 7
    local.get 1
    i32.store offset=104
    local.get 7
    local.get 2
    i32.store offset=100
    local.get 7
    local.get 3
    i32.store offset=96
    local.get 7
    local.get 4
    i32.store offset=92
    local.get 7
    i32.load offset=100
    local.set 8
    local.get 8
    i32.load
    local.set 9
    local.get 7
    local.get 9
    i32.store offset=88
    local.get 7
    i32.load offset=100
    local.set 10
    local.get 10
    i32.load offset=4
    local.set 11
    local.get 7
    local.get 11
    i32.store offset=84
    local.get 7
    i32.load offset=100
    local.set 12
    local.get 12
    f64.load offset=16
    local.set 13
    local.get 7
    local.get 13
    f64.store offset=72
    local.get 7
    i32.load offset=100
    local.set 14
    local.get 14
    f64.load offset=24
    local.set 15
    local.get 7
    local.get 15
    f64.store offset=64
    local.get 7
    i32.load offset=96
    local.set 16
    i32.const 1
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
    block  ;; label = @1
      local.get 22
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      local.set 23
      local.get 7
      local.get 23
      i32.store offset=96
    end
    local.get 7
    i32.load offset=92
    local.set 24
    local.get 7
    i32.load offset=88
    local.set 25
    i32.const 1
    local.set 26
    local.get 25
    local.get 26
    i32.sub
    local.set 27
    local.get 24
    local.set 28
    local.get 27
    local.set 29
    local.get 28
    local.get 29
    i32.gt_s
    local.set 30
    i32.const 1
    local.set 31
    local.get 30
    local.get 31
    i32.and
    local.set 32
    block  ;; label = @1
      local.get 32
      i32.eqz
      br_if 0 (;@1;)
      local.get 7
      i32.load offset=88
      local.set 33
      i32.const 1
      local.set 34
      local.get 33
      local.get 34
      i32.sub
      local.set 35
      local.get 7
      local.get 35
      i32.store offset=92
    end
    local.get 7
    i32.load offset=96
    local.set 36
    local.get 7
    local.get 36
    i32.store offset=60
    block  ;; label = @1
      loop  ;; label = @2
        local.get 7
        i32.load offset=60
        local.set 37
        local.get 7
        i32.load offset=92
        local.set 38
        local.get 37
        local.set 39
        local.get 38
        local.set 40
        local.get 39
        local.get 40
        i32.lt_s
        local.set 41
        i32.const 1
        local.set 42
        local.get 41
        local.get 42
        i32.and
        local.set 43
        local.get 43
        i32.eqz
        br_if 1 (;@1;)
        local.get 7
        i32.load offset=60
        local.set 44
        local.get 7
        i32.load offset=84
        local.set 45
        local.get 44
        local.get 45
        i32.mul
        local.set 46
        local.get 7
        local.get 46
        i32.store offset=56
        i32.const 1
        local.set 47
        local.get 7
        local.get 47
        i32.store offset=52
        block  ;; label = @3
          loop  ;; label = @4
            local.get 7
            i32.load offset=52
            local.set 48
            local.get 7
            i32.load offset=84
            local.set 49
            i32.const 1
            local.set 50
            local.get 49
            local.get 50
            i32.sub
            local.set 51
            local.get 48
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
            br_if 1 (;@3;)
            local.get 7
            i32.load offset=108
            local.set 57
            local.get 7
            i32.load offset=56
            local.set 58
            local.get 7
            i32.load offset=52
            local.set 59
            local.get 58
            local.get 59
            i32.add
            local.set 60
            i32.const 3
            local.set 61
            local.get 60
            local.get 61
            i32.shl
            local.set 62
            local.get 57
            local.get 62
            i32.add
            local.set 63
            local.get 63
            f64.load
            local.set 64
            local.get 7
            local.get 64
            f64.store offset=40
            local.get 7
            i32.load offset=108
            local.set 65
            local.get 7
            i32.load offset=56
            local.set 66
            local.get 7
            i32.load offset=84
            local.set 67
            local.get 66
            local.get 67
            i32.sub
            local.set 68
            local.get 7
            i32.load offset=52
            local.set 69
            local.get 68
            local.get 69
            i32.add
            local.set 70
            i32.const 3
            local.set 71
            local.get 70
            local.get 71
            i32.shl
            local.set 72
            local.get 65
            local.get 72
            i32.add
            local.set 73
            local.get 73
            f64.load
            local.set 74
            local.get 7
            local.get 74
            f64.store offset=32
            local.get 7
            i32.load offset=108
            local.set 75
            local.get 7
            i32.load offset=56
            local.set 76
            local.get 7
            i32.load offset=84
            local.set 77
            local.get 76
            local.get 77
            i32.add
            local.set 78
            local.get 7
            i32.load offset=52
            local.set 79
            local.get 78
            local.get 79
            i32.add
            local.set 80
            i32.const 3
            local.set 81
            local.get 80
            local.get 81
            i32.shl
            local.set 82
            local.get 75
            local.get 82
            i32.add
            local.set 83
            local.get 83
            f64.load
            local.set 84
            local.get 7
            local.get 84
            f64.store offset=24
            local.get 7
            i32.load offset=108
            local.set 85
            local.get 7
            i32.load offset=56
            local.set 86
            local.get 7
            i32.load offset=52
            local.set 87
            local.get 86
            local.get 87
            i32.add
            local.set 88
            i32.const 1
            local.set 89
            local.get 88
            local.get 89
            i32.sub
            local.set 90
            i32.const 3
            local.set 91
            local.get 90
            local.get 91
            i32.shl
            local.set 92
            local.get 85
            local.get 92
            i32.add
            local.set 93
            local.get 93
            f64.load
            local.set 94
            local.get 7
            local.get 94
            f64.store offset=16
            local.get 7
            i32.load offset=108
            local.set 95
            local.get 7
            i32.load offset=56
            local.set 96
            local.get 7
            i32.load offset=52
            local.set 97
            local.get 96
            local.get 97
            i32.add
            local.set 98
            i32.const 1
            local.set 99
            local.get 98
            local.get 99
            i32.add
            local.set 100
            i32.const 3
            local.set 101
            local.get 100
            local.get 101
            i32.shl
            local.set 102
            local.get 95
            local.get 102
            i32.add
            local.set 103
            local.get 103
            f64.load
            local.set 104
            local.get 7
            local.get 104
            f64.store offset=8
            local.get 7
            f64.load offset=40
            local.set 105
            local.get 7
            f64.load offset=72
            local.set 106
            local.get 7
            f64.load offset=24
            local.set 107
            local.get 7
            f64.load offset=32
            local.set 108
            local.get 107
            local.get 108
            f64.add
            local.set 109
            local.get 7
            f64.load offset=40
            local.set 110
            local.get 110
            local.get 110
            f64.add
            local.set 111
            local.get 109
            local.get 111
            f64.sub
            local.set 112
            local.get 106
            local.get 112
            f64.mul
            local.set 113
            local.get 113
            local.get 105
            f64.add
            local.set 114
            local.get 7
            f64.load offset=64
            local.set 115
            local.get 7
            f64.load offset=8
            local.set 116
            local.get 7
            f64.load offset=16
            local.set 117
            local.get 116
            local.get 117
            f64.add
            local.set 118
            local.get 7
            f64.load offset=40
            local.set 119
            local.get 119
            local.get 119
            f64.add
            local.set 120
            local.get 118
            local.get 120
            f64.sub
            local.set 121
            local.get 115
            local.get 121
            f64.mul
            local.set 122
            local.get 122
            local.get 114
            f64.add
            local.set 123
            local.get 7
            local.get 123
            f64.store
            local.get 7
            f64.load
            local.set 124
            local.get 7
            i32.load offset=104
            local.set 125
            local.get 7
            i32.load offset=56
            local.set 126
            local.get 7
            i32.load offset=52
            local.set 127
            local.get 126
            local.get 127
            i32.add
            local.set 128
            i32.const 3
            local.set 129
            local.get 128
            local.get 129
            i32.shl
            local.set 130
            local.get 125
            local.get 130
            i32.add
            local.set 131
            local.get 131
            local.get 124
            f64.store
            local.get 7
            i32.load offset=52
            local.set 132
            i32.const 1
            local.set 133
            local.get 132
            local.get 133
            i32.add
            local.set 134
            local.get 7
            local.get 134
            i32.store offset=52
            br 0 (;@4;)
          end
        end
        local.get 7
        i32.load offset=60
        local.set 135
        i32.const 1
        local.set 136
        local.get 135
        local.get 136
        i32.add
        local.set 137
        local.get 7
        local.get 137
        i32.store offset=60
        br 0 (;@2;)
      end
    end
    return)
  (func $barrier_wait (type 3) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
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
    local.get 4
    call $__pthread_mutex_lock
    local.set 5
    local.get 3
    local.get 5
    i32.store offset=8
    local.get 3
    i32.load offset=8
    local.set 6
    block  ;; label = @1
      local.get 6
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=8
      local.set 7
      i32.const 1444
      local.set 8
      local.get 8
      local.get 7
      call $die_errno
    end
    local.get 3
    i32.load offset=12
    local.set 9
    local.get 9
    i32.load offset=80
    local.set 10
    local.get 3
    local.get 10
    i32.store offset=4
    local.get 3
    i32.load offset=12
    local.set 11
    local.get 11
    i32.load offset=76
    local.set 12
    i32.const 1
    local.set 13
    local.get 12
    local.get 13
    i32.add
    local.set 14
    local.get 11
    local.get 14
    i32.store offset=76
    local.get 3
    i32.load offset=12
    local.set 15
    local.get 15
    i32.load offset=76
    local.set 16
    local.get 3
    i32.load offset=12
    local.set 17
    local.get 17
    i32.load offset=72
    local.set 18
    local.get 16
    local.set 19
    local.get 18
    local.set 20
    local.get 19
    local.get 20
    i32.eq
    local.set 21
    i32.const 1
    local.set 22
    local.get 21
    local.get 22
    i32.and
    local.set 23
    block  ;; label = @1
      block  ;; label = @2
        local.get 23
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load offset=12
        local.set 24
        i32.const 0
        local.set 25
        local.get 24
        local.get 25
        i32.store offset=76
        local.get 3
        i32.load offset=12
        local.set 26
        local.get 26
        i32.load offset=80
        local.set 27
        i32.const 1
        local.set 28
        local.get 27
        local.get 28
        i32.add
        local.set 29
        local.get 26
        local.get 29
        i32.store offset=80
        local.get 3
        i32.load offset=12
        local.set 30
        i32.const 24
        local.set 31
        local.get 30
        local.get 31
        i32.add
        local.set 32
        local.get 32
        call $pthread_cond_broadcast
        local.set 33
        local.get 3
        local.get 33
        i32.store offset=8
        local.get 3
        i32.load offset=8
        local.set 34
        block  ;; label = @3
          local.get 34
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=8
          local.set 35
          i32.const 1219
          local.set 36
          local.get 36
          local.get 35
          call $die_errno
        end
        local.get 3
        i32.load offset=12
        local.set 37
        local.get 37
        call $__pthread_mutex_unlock
        local.set 38
        local.get 3
        local.get 38
        i32.store offset=8
        local.get 3
        i32.load offset=8
        local.set 39
        block  ;; label = @3
          local.get 39
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=8
          local.set 40
          i32.const 1423
          local.set 41
          local.get 41
          local.get 40
          call $die_errno
        end
        br 1 (;@1;)
      end
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=4
          local.set 42
          local.get 3
          i32.load offset=12
          local.set 43
          local.get 43
          i32.load offset=80
          local.set 44
          local.get 42
          local.set 45
          local.get 44
          local.set 46
          local.get 45
          local.get 46
          i32.eq
          local.set 47
          i32.const 1
          local.set 48
          local.get 47
          local.get 48
          i32.and
          local.set 49
          local.get 49
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=12
          local.set 50
          i32.const 24
          local.set 51
          local.get 50
          local.get 51
          i32.add
          local.set 52
          local.get 3
          i32.load offset=12
          local.set 53
          local.get 52
          local.get 53
          call $pthread_cond_wait
          local.set 54
          local.get 3
          local.get 54
          i32.store offset=8
          local.get 3
          i32.load offset=8
          local.set 55
          block  ;; label = @4
            local.get 55
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=8
            local.set 56
            i32.const 1316
            local.set 57
            local.get 57
            local.get 56
            call $die_errno
          end
          br 0 (;@3;)
        end
      end
      local.get 3
      i32.load offset=12
      local.set 58
      local.get 58
      call $__pthread_mutex_unlock
      local.set 59
      local.get 3
      local.get 59
      i32.store offset=8
      local.get 3
      i32.load offset=8
      local.set 60
      local.get 60
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=8
      local.set 61
      i32.const 1423
      local.set 62
      local.get 62
      local.get 61
      call $die_errno
    end
    i32.const 16
    local.set 63
    local.get 3
    local.get 63
    i32.add
    local.set 64
    local.get 64
    global.set $__stack_pointer
    return)
  (func $stress_phase (type 16) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64 i64 i32 i32 i32 i32 i64 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 112
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=108
    local.get 6
    local.get 1
    i32.store offset=104
    local.get 6
    local.get 2
    i32.store offset=100
    local.get 6
    local.get 3
    i32.store offset=96
    local.get 6
    i32.load offset=108
    local.set 7
    local.get 7
    i32.load offset=32
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        local.get 8
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 6
      i32.load offset=108
      local.set 9
      local.get 9
      i32.load offset=40
      local.set 10
      i32.const 0
      local.set 11
      local.get 10
      local.set 12
      local.get 11
      local.set 13
      local.get 12
      local.get 13
      i32.le_s
      local.set 14
      i32.const 1
      local.set 15
      local.get 14
      local.get 15
      i32.and
      local.set 16
      block  ;; label = @2
        local.get 16
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 6
      i32.load offset=100
      local.set 17
      local.get 6
      i32.load offset=108
      local.set 18
      local.get 18
      i32.load offset=40
      local.set 19
      local.get 17
      local.get 19
      i32.rem_s
      local.set 20
      block  ;; label = @2
        local.get 20
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 6
      i32.load offset=108
      local.set 21
      local.get 21
      i32.load offset=12
      local.set 22
      local.get 6
      local.get 22
      i32.store offset=92
      local.get 6
      i32.load offset=108
      local.set 23
      local.get 23
      i32.load offset=32
      local.set 24
      i32.const -1
      local.set 25
      local.get 24
      local.get 25
      i32.add
      local.set 26
      i32.const 3
      local.set 27
      local.get 26
      local.get 27
      i32.gt_u
      drop
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 26
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 3 (;@3;) 4 (;@2;)
              end
              local.get 6
              i32.load offset=96
              local.set 28
              block  ;; label = @6
                block  ;; label = @7
                  local.get 28
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 29
                  local.get 6
                  local.get 29
                  i32.store offset=88
                  local.get 6
                  i32.load offset=88
                  local.set 30
                  i32.const 0
                  local.set 31
                  local.get 31
                  local.get 30
                  i32.atomic.rmw.add offset=5876
                  local.set 32
                  local.get 6
                  local.get 32
                  i32.store offset=84
                  br 1 (;@6;)
                end
                block  ;; label = @7
                  loop  ;; label = @8
                    i32.const 0
                    local.set 33
                    local.get 33
                    i32.atomic.load offset=5876
                    local.set 34
                    local.get 6
                    local.get 34
                    i32.store offset=80
                    local.get 6
                    i32.load offset=80
                    local.set 35
                    local.get 6
                    i32.load offset=92
                    local.set 36
                    i32.const 1
                    local.set 37
                    local.get 36
                    local.get 37
                    i32.sub
                    local.set 38
                    local.get 35
                    local.set 39
                    local.get 38
                    local.set 40
                    local.get 39
                    local.get 40
                    i32.lt_s
                    local.set 41
                    i32.const 1
                    local.set 42
                    local.get 41
                    local.get 42
                    i32.and
                    local.set 43
                    local.get 43
                    i32.eqz
                    br_if 1 (;@7;)
                    br 0 (;@8;)
                  end
                end
                local.get 6
                i32.load offset=108
                local.set 44
                local.get 6
                i32.load offset=100
                local.set 45
                local.get 6
                i32.load offset=96
                local.set 46
                i32.const 1279
                local.set 47
                local.get 44
                local.get 45
                local.get 47
                local.get 46
                call $maybe_checkpoint
                local.get 6
                i32.load offset=108
                local.set 48
                local.get 48
                i64.load offset=48
                local.set 49
                i64.const 0
                local.set 50
                local.get 49
                local.set 51
                local.get 50
                local.set 52
                local.get 51
                local.get 52
                i64.gt_s
                local.set 53
                i32.const 1
                local.set 54
                local.get 53
                local.get 54
                i32.and
                local.set 55
                block  ;; label = @7
                  local.get 55
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  i32.load offset=108
                  local.set 56
                  local.get 56
                  i64.load offset=48
                  local.set 57
                  local.get 57
                  call $spin_delay
                end
                i32.const 0
                local.set 58
                local.get 6
                local.get 58
                i32.store offset=76
                local.get 6
                i32.load offset=76
                local.set 59
                local.get 58
                local.get 59
                i32.atomic.store offset=5876
              end
              local.get 6
              i32.load offset=104
              local.set 60
              local.get 60
              call $barrier_wait
              br 4 (;@1;)
            end
            local.get 6
            i32.load offset=96
            local.set 61
            block  ;; label = @5
              local.get 61
              br_if 0 (;@5;)
              i32.const 0
              local.set 62
              local.get 6
              local.get 62
              i32.store offset=72
              local.get 6
              i32.load offset=72
              local.set 63
              local.get 62
              local.get 63
              i32.atomic.store offset=5880
              i32.const 5884
              local.set 64
              local.get 64
              call $__pthread_mutex_lock
              local.set 65
              local.get 6
              local.get 65
              i32.store offset=68
              local.get 6
              i32.load offset=68
              local.set 66
              block  ;; label = @6
                local.get 66
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.load offset=68
                local.set 67
                i32.const 1766
                local.set 68
                local.get 68
                local.get 67
                call $die_errno
              end
            end
            local.get 6
            i32.load offset=104
            local.set 69
            local.get 69
            call $barrier_wait
            local.get 6
            i32.load offset=96
            local.set 70
            block  ;; label = @5
              block  ;; label = @6
                local.get 70
                i32.eqz
                br_if 0 (;@6;)
                i32.const 1
                local.set 71
                local.get 6
                local.get 71
                i32.store offset=64
                local.get 6
                i32.load offset=64
                local.set 72
                i32.const 0
                local.set 73
                local.get 73
                local.get 72
                i32.atomic.rmw.add offset=5880
                local.set 74
                local.get 6
                local.get 74
                i32.store offset=60
                i32.const 5884
                local.set 75
                local.get 75
                call $__pthread_mutex_lock
                local.set 76
                local.get 6
                local.get 76
                i32.store offset=56
                local.get 6
                i32.load offset=56
                local.set 77
                block  ;; label = @7
                  local.get 77
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  i32.load offset=56
                  local.set 78
                  i32.const 1829
                  local.set 79
                  local.get 79
                  local.get 78
                  call $die_errno
                end
                i32.const 5884
                local.set 80
                local.get 80
                call $__pthread_mutex_unlock
                local.set 81
                local.get 6
                local.get 81
                i32.store offset=56
                local.get 6
                i32.load offset=56
                local.set 82
                block  ;; label = @7
                  local.get 82
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 6
                  i32.load offset=56
                  local.set 83
                  i32.const 1793
                  local.set 84
                  local.get 84
                  local.get 83
                  call $die_errno
                end
                br 1 (;@5;)
              end
              block  ;; label = @6
                loop  ;; label = @7
                  i32.const 0
                  local.set 85
                  local.get 85
                  i32.atomic.load offset=5880
                  local.set 86
                  local.get 6
                  local.get 86
                  i32.store offset=52
                  local.get 6
                  i32.load offset=52
                  local.set 87
                  local.get 6
                  i32.load offset=92
                  local.set 88
                  i32.const 1
                  local.set 89
                  local.get 88
                  local.get 89
                  i32.sub
                  local.set 90
                  local.get 87
                  local.set 91
                  local.get 90
                  local.set 92
                  local.get 91
                  local.get 92
                  i32.lt_s
                  local.set 93
                  i32.const 1
                  local.set 94
                  local.get 93
                  local.get 94
                  i32.and
                  local.set 95
                  local.get 95
                  i32.eqz
                  br_if 1 (;@6;)
                  br 0 (;@7;)
                end
              end
              local.get 6
              i32.load offset=108
              local.set 96
              local.get 6
              i32.load offset=100
              local.set 97
              local.get 6
              i32.load offset=96
              local.set 98
              i32.const 1554
              local.set 99
              local.get 96
              local.get 97
              local.get 99
              local.get 98
              call $maybe_checkpoint
              local.get 6
              i32.load offset=108
              local.set 100
              local.get 100
              i64.load offset=48
              local.set 101
              i64.const 0
              local.set 102
              local.get 101
              local.set 103
              local.get 102
              local.set 104
              local.get 103
              local.get 104
              i64.gt_s
              local.set 105
              i32.const 1
              local.set 106
              local.get 105
              local.get 106
              i32.and
              local.set 107
              block  ;; label = @6
                local.get 107
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.load offset=108
                local.set 108
                local.get 108
                i64.load offset=48
                local.set 109
                local.get 109
                call $spin_delay
              end
              i32.const 5884
              local.set 110
              local.get 110
              call $__pthread_mutex_unlock
              local.set 111
              local.get 6
              local.get 111
              i32.store offset=48
              local.get 6
              i32.load offset=48
              local.set 112
              block  ;; label = @6
                local.get 112
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.load offset=48
                local.set 113
                i32.const 1737
                local.set 114
                local.get 114
                local.get 113
                call $die_errno
              end
            end
            local.get 6
            i32.load offset=104
            local.set 115
            local.get 115
            call $barrier_wait
            br 3 (;@1;)
          end
          local.get 6
          i32.load offset=92
          local.set 116
          i32.const 2
          local.set 117
          local.get 116
          local.set 118
          local.get 117
          local.set 119
          local.get 118
          local.get 119
          i32.lt_s
          local.set 120
          i32.const 1
          local.set 121
          local.get 120
          local.get 121
          i32.and
          local.set 122
          block  ;; label = @4
            local.get 122
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
          local.get 6
          i32.load offset=96
          local.set 123
          block  ;; label = @4
            local.get 123
            br_if 0 (;@4;)
            i32.const 5908
            local.set 124
            local.get 124
            call $__pthread_mutex_lock
            local.set 125
            local.get 6
            local.get 125
            i32.store offset=44
            local.get 6
            i32.load offset=44
            local.set 126
            block  ;; label = @5
              local.get 126
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.load offset=44
              local.set 127
              i32.const 2029
              local.set 128
              local.get 128
              local.get 127
              call $die_errno
            end
            i32.const 0
            local.set 129
            i32.const 0
            local.set 130
            local.get 130
            local.get 129
            i32.store offset=5932
            i32.const 0
            local.set 131
            i32.const 0
            local.set 132
            local.get 132
            local.get 131
            i32.store offset=5936
            i32.const 5908
            local.set 133
            local.get 133
            call $__pthread_mutex_unlock
            local.set 134
            local.get 6
            local.get 134
            i32.store offset=44
            local.get 6
            i32.load offset=44
            local.set 135
            block  ;; label = @5
              local.get 135
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.load offset=44
              local.set 136
              i32.const 2002
              local.set 137
              local.get 137
              local.get 136
              call $die_errno
            end
          end
          local.get 6
          i32.load offset=104
          local.set 138
          local.get 138
          call $barrier_wait
          local.get 6
          i32.load offset=96
          local.set 139
          block  ;; label = @4
            block  ;; label = @5
              local.get 139
              i32.eqz
              br_if 0 (;@5;)
              i32.const 5908
              local.set 140
              local.get 140
              call $__pthread_mutex_lock
              local.set 141
              local.get 6
              local.get 141
              i32.store offset=40
              local.get 6
              i32.load offset=40
              local.set 142
              block  ;; label = @6
                local.get 142
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.load offset=40
                local.set 143
                i32.const 1897
                local.set 144
                local.get 144
                local.get 143
                call $die_errno
              end
              i32.const 0
              local.set 145
              local.get 145
              i32.load offset=5932
              local.set 146
              i32.const 1
              local.set 147
              local.get 146
              local.get 147
              i32.add
              local.set 148
              i32.const 0
              local.set 149
              local.get 149
              local.get 148
              i32.store offset=5932
              block  ;; label = @6
                loop  ;; label = @7
                  i32.const 0
                  local.set 150
                  local.get 150
                  i32.load offset=5936
                  local.set 151
                  i32.const 0
                  local.set 152
                  local.get 151
                  local.set 153
                  local.get 152
                  local.set 154
                  local.get 153
                  local.get 154
                  i32.ne
                  local.set 155
                  i32.const -1
                  local.set 156
                  local.get 155
                  local.get 156
                  i32.xor
                  local.set 157
                  i32.const 1
                  local.set 158
                  local.get 157
                  local.get 158
                  i32.and
                  local.set 159
                  local.get 159
                  i32.eqz
                  br_if 1 (;@6;)
                  i32.const 5940
                  local.set 160
                  i32.const 5908
                  local.set 161
                  local.get 160
                  local.get 161
                  call $pthread_cond_wait
                  local.set 162
                  local.get 6
                  local.get 162
                  i32.store offset=40
                  local.get 6
                  i32.load offset=40
                  local.set 163
                  block  ;; label = @8
                    local.get 163
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 6
                    i32.load offset=40
                    local.set 164
                    i32.const 1316
                    local.set 165
                    local.get 165
                    local.get 164
                    call $die_errno
                  end
                  br 0 (;@7;)
                end
              end
              i32.const 5908
              local.set 166
              local.get 166
              call $__pthread_mutex_unlock
              local.set 167
              local.get 6
              local.get 167
              i32.store offset=40
              local.get 6
              i32.load offset=40
              local.set 168
              block  ;; label = @6
                local.get 168
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.load offset=40
                local.set 169
                i32.const 1863
                local.set 170
                local.get 170
                local.get 169
                call $die_errno
              end
              br 1 (;@4;)
            end
            loop  ;; label = @5
              i32.const 5908
              local.set 171
              local.get 171
              call $__pthread_mutex_lock
              local.set 172
              local.get 6
              local.get 172
              i32.store offset=36
              local.get 6
              i32.load offset=36
              local.set 173
              block  ;; label = @6
                local.get 173
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.load offset=36
                local.set 174
                i32.const 2086
                local.set 175
                local.get 175
                local.get 174
                call $die_errno
              end
              i32.const 0
              local.set 176
              local.get 176
              i32.load offset=5932
              local.set 177
              local.get 6
              local.get 177
              i32.store offset=32
              i32.const 5908
              local.set 178
              local.get 178
              call $__pthread_mutex_unlock
              local.set 179
              local.get 6
              local.get 179
              i32.store offset=36
              local.get 6
              i32.load offset=36
              local.set 180
              block  ;; label = @6
                local.get 180
                i32.eqz
                br_if 0 (;@6;)
                local.get 6
                i32.load offset=36
                local.set 181
                i32.const 2054
                local.set 182
                local.get 182
                local.get 181
                call $die_errno
              end
              local.get 6
              i32.load offset=32
              local.set 183
              local.get 6
              i32.load offset=92
              local.set 184
              i32.const 1
              local.set 185
              local.get 184
              local.get 185
              i32.sub
              local.set 186
              local.get 183
              local.set 187
              local.get 186
              local.set 188
              local.get 187
              local.get 188
              i32.ge_s
              local.set 189
              i32.const 1
              local.set 190
              local.get 189
              local.get 190
              i32.and
              local.set 191
              block  ;; label = @6
                block  ;; label = @7
                  local.get 191
                  i32.eqz
                  br_if 0 (;@7;)
                  br 1 (;@6;)
                end
                br 1 (;@5;)
              end
            end
            i32.const 5908
            local.set 192
            local.get 192
            call $__pthread_mutex_lock
            local.set 193
            local.get 6
            local.get 193
            i32.store offset=28
            local.get 6
            i32.load offset=28
            local.set 194
            block  ;; label = @5
              local.get 194
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.load offset=28
              local.set 195
              i32.const 1970
              local.set 196
              local.get 196
              local.get 195
              call $die_errno
            end
            local.get 6
            i32.load offset=108
            local.set 197
            local.get 6
            i32.load offset=100
            local.set 198
            local.get 6
            i32.load offset=96
            local.set 199
            i32.const 1334
            local.set 200
            local.get 197
            local.get 198
            local.get 200
            local.get 199
            call $maybe_checkpoint
            local.get 6
            i32.load offset=108
            local.set 201
            local.get 201
            i64.load offset=48
            local.set 202
            i64.const 0
            local.set 203
            local.get 202
            local.set 204
            local.get 203
            local.set 205
            local.get 204
            local.get 205
            i64.gt_s
            local.set 206
            i32.const 1
            local.set 207
            local.get 206
            local.get 207
            i32.and
            local.set 208
            block  ;; label = @5
              local.get 208
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.load offset=108
              local.set 209
              local.get 209
              i64.load offset=48
              local.set 210
              local.get 210
              call $spin_delay
            end
            i32.const 1
            local.set 211
            i32.const 0
            local.set 212
            local.get 212
            local.get 211
            i32.store offset=5936
            i32.const 5940
            local.set 213
            local.get 213
            call $pthread_cond_broadcast
            local.set 214
            local.get 6
            local.get 214
            i32.store offset=28
            local.get 6
            i32.load offset=28
            local.set 215
            block  ;; label = @5
              local.get 215
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.load offset=28
              local.set 216
              i32.const 1219
              local.set 217
              local.get 217
              local.get 216
              call $die_errno
            end
            i32.const 5908
            local.set 218
            local.get 218
            call $__pthread_mutex_unlock
            local.set 219
            local.get 6
            local.get 219
            i32.store offset=28
            local.get 6
            i32.load offset=28
            local.set 220
            block  ;; label = @5
              local.get 220
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.load offset=28
              local.set 221
              i32.const 1936
              local.set 222
              local.get 222
              local.get 221
              call $die_errno
            end
          end
          local.get 6
          i32.load offset=104
          local.set 223
          local.get 223
          call $barrier_wait
          br 2 (;@1;)
        end
        local.get 6
        i32.load offset=92
        local.set 224
        i32.const 2
        local.set 225
        local.get 224
        local.set 226
        local.get 225
        local.set 227
        local.get 226
        local.get 227
        i32.lt_s
        local.set 228
        i32.const 1
        local.set 229
        local.get 228
        local.get 229
        i32.and
        local.set 230
        block  ;; label = @3
          local.get 230
          i32.eqz
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
        local.get 6
        i32.load offset=96
        local.set 231
        block  ;; label = @3
          local.get 231
          br_if 0 (;@3;)
          i32.const 0
          local.set 232
          local.get 6
          local.get 232
          i32.store offset=24
          local.get 6
          i32.load offset=24
          local.set 233
          local.get 232
          local.get 233
          i32.atomic.store offset=5988
          local.get 6
          local.get 232
          i32.store offset=20
          local.get 6
          i32.load offset=20
          local.set 234
          local.get 232
          local.get 234
          i32.atomic.store offset=5992
          i32.const 5996
          local.set 235
          i32.const 0
          local.set 236
          i32.const 2
          local.set 237
          i32.const 5988
          local.set 238
          local.get 235
          local.get 236
          local.get 237
          local.get 238
          call $__pthread_create
          local.set 239
          local.get 6
          local.get 239
          i32.store offset=16
          local.get 6
          i32.load offset=16
          local.set 240
          block  ;; label = @4
            local.get 240
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            i32.load offset=16
            local.set 241
            i32.const 1709
            local.set 242
            local.get 242
            local.get 241
            call $die_errno
          end
        end
        local.get 6
        i32.load offset=104
        local.set 243
        local.get 243
        call $barrier_wait
        local.get 6
        i32.load offset=96
        local.set 244
        i32.const 1
        local.set 245
        local.get 244
        local.set 246
        local.get 245
        local.set 247
        local.get 246
        local.get 247
        i32.eq
        local.set 248
        i32.const 1
        local.set 249
        local.get 248
        local.get 249
        i32.and
        local.set 250
        block  ;; label = @3
          block  ;; label = @4
            local.get 250
            i32.eqz
            br_if 0 (;@4;)
            i32.const 1
            local.set 251
            local.get 6
            local.get 251
            i32.store offset=12
            local.get 6
            i32.load offset=12
            local.set 252
            i32.const 0
            local.set 253
            local.get 253
            local.get 252
            i32.atomic.store offset=5992
            i32.const 0
            local.set 254
            local.get 254
            i32.load offset=5996
            local.set 255
            i32.const 0
            local.set 256
            local.get 255
            local.get 256
            call $__pthread_join
            local.set 257
            local.get 6
            local.get 257
            i32.store offset=8
            local.get 6
            i32.load offset=8
            local.set 258
            block  ;; label = @5
              local.get 258
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.load offset=8
              local.set 259
              i32.const 1683
              local.set 260
              local.get 260
              local.get 259
              call $die_errno
            end
            br 1 (;@3;)
          end
          local.get 6
          i32.load offset=96
          local.set 261
          block  ;; label = @4
            local.get 261
            br_if 0 (;@4;)
            block  ;; label = @5
              loop  ;; label = @6
                i32.const 0
                local.set 262
                local.get 262
                i32.atomic.load offset=5992
                local.set 263
                local.get 6
                local.get 263
                i32.store offset=4
                local.get 6
                i32.load offset=4
                local.set 264
                local.get 264
                br_if 1 (;@5;)
                br 0 (;@6;)
              end
            end
            local.get 6
            i32.load offset=108
            local.set 265
            local.get 6
            i32.load offset=100
            local.set 266
            local.get 6
            i32.load offset=96
            local.set 267
            i32.const 1299
            local.set 268
            local.get 265
            local.get 266
            local.get 268
            local.get 267
            call $maybe_checkpoint
            local.get 6
            i32.load offset=108
            local.set 269
            local.get 269
            i64.load offset=48
            local.set 270
            i64.const 0
            local.set 271
            local.get 270
            local.set 272
            local.get 271
            local.set 273
            local.get 272
            local.get 273
            i64.gt_s
            local.set 274
            i32.const 1
            local.set 275
            local.get 274
            local.get 275
            i32.and
            local.set 276
            block  ;; label = @5
              local.get 276
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              i32.load offset=108
              local.set 277
              local.get 277
              i64.load offset=48
              local.set 278
              local.get 278
              call $spin_delay
            end
            i32.const 1
            local.set 279
            local.get 6
            local.get 279
            i32.store
            local.get 6
            i32.load
            local.set 280
            i32.const 0
            local.set 281
            local.get 281
            local.get 280
            i32.atomic.store offset=5988
          end
        end
        local.get 6
        i32.load offset=104
        local.set 282
        local.get 282
        call $barrier_wait
        br 1 (;@1;)
      end
    end
    i32.const 112
    local.set 283
    local.get 6
    local.get 283
    i32.add
    local.set 284
    local.get 284
    global.set $__stack_pointer
    return)
  (func $maybe_checkpoint (type 16) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 16
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=12
    local.get 6
    local.get 1
    i32.store offset=8
    local.get 6
    local.get 2
    i32.store offset=4
    local.get 6
    local.get 3
    i32.store
    local.get 6
    i32.load
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 6
      i32.load offset=12
      local.set 8
      local.get 8
      i32.load offset=36
      local.set 9
      i32.const 0
      local.set 10
      local.get 9
      local.set 11
      local.get 10
      local.set 12
      local.get 11
      local.get 12
      i32.le_s
      local.set 13
      i32.const 1
      local.set 14
      local.get 13
      local.get 14
      i32.and
      local.set 15
      block  ;; label = @2
        local.get 15
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 6
      i32.load offset=8
      local.set 16
      local.get 6
      i32.load offset=12
      local.set 17
      local.get 17
      i32.load offset=36
      local.set 18
      local.get 16
      local.get 18
      i32.rem_s
      local.set 19
      block  ;; label = @2
        local.get 19
        i32.eqz
        br_if 0 (;@2;)
        br 1 (;@1;)
      end
      local.get 6
      i32.load offset=8
      local.set 20
      local.get 6
      i32.load offset=4
      local.set 21
      local.get 20
      local.get 21
      call $checkpoint_hook
    end
    i32.const 16
    local.set 22
    local.get 6
    local.get 22
    i32.add
    local.set 23
    local.get 23
    global.set $__stack_pointer
    return)
  (func $print_samples (type 10) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 96
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    global.set $__stack_pointer
    local.get 4
    local.get 0
    i32.store offset=92
    local.get 4
    local.get 1
    i32.store offset=88
    local.get 4
    i32.load offset=88
    local.set 5
    local.get 5
    i32.load
    local.set 6
    local.get 4
    local.get 6
    i32.store offset=84
    local.get 4
    i32.load offset=88
    local.set 7
    local.get 7
    i32.load offset=4
    local.set 8
    local.get 4
    local.get 8
    i32.store offset=80
    i32.const 1
    local.set 9
    local.get 4
    local.get 9
    i32.store offset=32
    i32.const 1
    local.set 10
    local.get 4
    local.get 10
    i32.store offset=36
    local.get 4
    i32.load offset=84
    local.set 11
    i32.const 6
    local.set 12
    local.get 11
    local.get 12
    i32.div_s
    local.set 13
    local.get 4
    local.get 13
    i32.store offset=40
    local.get 4
    i32.load offset=80
    local.set 14
    i32.const 6
    local.set 15
    local.get 14
    local.get 15
    i32.div_s
    local.set 16
    local.get 4
    local.get 16
    i32.store offset=44
    local.get 4
    i32.load offset=84
    local.set 17
    i32.const 2
    local.set 18
    local.get 17
    local.get 18
    i32.div_s
    local.set 19
    local.get 4
    local.get 19
    i32.store offset=48
    local.get 4
    i32.load offset=80
    local.set 20
    i32.const 2
    local.set 21
    local.get 20
    local.get 21
    i32.div_s
    local.set 22
    local.get 4
    local.get 22
    i32.store offset=52
    local.get 4
    i32.load offset=84
    local.set 23
    i32.const 3
    local.set 24
    local.get 23
    local.get 24
    i32.mul
    local.set 25
    i32.const 4
    local.set 26
    local.get 25
    local.get 26
    i32.div_s
    local.set 27
    local.get 4
    local.get 27
    i32.store offset=56
    local.get 4
    i32.load offset=80
    local.set 28
    i32.const 3
    local.set 29
    local.get 28
    local.get 29
    i32.mul
    local.set 30
    i32.const 4
    local.set 31
    local.get 30
    local.get 31
    i32.div_s
    local.set 32
    local.get 4
    local.get 32
    i32.store offset=60
    local.get 4
    i32.load offset=84
    local.set 33
    i32.const 2
    local.set 34
    local.get 33
    local.get 34
    i32.sub
    local.set 35
    local.get 4
    local.get 35
    i32.store offset=64
    local.get 4
    i32.load offset=80
    local.set 36
    i32.const 2
    local.set 37
    local.get 36
    local.get 37
    i32.sub
    local.set 38
    local.get 4
    local.get 38
    i32.store offset=68
    i32.const 5
    local.set 39
    local.get 4
    local.get 39
    i32.store offset=28
    i32.const 0
    local.set 40
    local.get 40
    i32.load offset=4832
    local.set 41
    i32.const 1583
    local.set 42
    i32.const 0
    local.set 43
    local.get 41
    local.get 42
    local.get 43
    call $fprintf
    drop
    i32.const 0
    local.set 44
    local.get 4
    local.get 44
    i32.store offset=24
    block  ;; label = @1
      loop  ;; label = @2
        local.get 4
        i32.load offset=24
        local.set 45
        i32.const 5
        local.set 46
        local.get 45
        local.set 47
        local.get 46
        local.set 48
        local.get 47
        local.get 48
        i32.lt_s
        local.set 49
        i32.const 1
        local.set 50
        local.get 49
        local.get 50
        i32.and
        local.set 51
        local.get 51
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=24
        local.set 52
        i32.const 32
        local.set 53
        local.get 4
        local.get 53
        i32.add
        local.set 54
        local.get 54
        local.set 55
        i32.const 3
        local.set 56
        local.get 52
        local.get 56
        i32.shl
        local.set 57
        local.get 55
        local.get 57
        i32.add
        local.set 58
        local.get 58
        i32.load
        local.set 59
        local.get 4
        local.get 59
        i32.store offset=20
        local.get 4
        i32.load offset=24
        local.set 60
        i32.const 32
        local.set 61
        local.get 4
        local.get 61
        i32.add
        local.set 62
        local.get 62
        local.set 63
        i32.const 3
        local.set 64
        local.get 60
        local.get 64
        i32.shl
        local.set 65
        local.get 63
        local.get 65
        i32.add
        local.set 66
        local.get 66
        i32.load offset=4
        local.set 67
        local.get 4
        local.get 67
        i32.store offset=16
        local.get 4
        i32.load offset=20
        local.set 68
        i32.const 0
        local.set 69
        local.get 68
        local.set 70
        local.get 69
        local.set 71
        local.get 70
        local.get 71
        i32.lt_s
        local.set 72
        i32.const 1
        local.set 73
        local.get 72
        local.get 73
        i32.and
        local.set 74
        block  ;; label = @3
          local.get 74
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 75
          local.get 4
          local.get 75
          i32.store offset=20
        end
        local.get 4
        i32.load offset=20
        local.set 76
        local.get 4
        i32.load offset=84
        local.set 77
        local.get 76
        local.set 78
        local.get 77
        local.set 79
        local.get 78
        local.get 79
        i32.ge_s
        local.set 80
        i32.const 1
        local.set 81
        local.get 80
        local.get 81
        i32.and
        local.set 82
        block  ;; label = @3
          local.get 82
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=84
          local.set 83
          i32.const 1
          local.set 84
          local.get 83
          local.get 84
          i32.sub
          local.set 85
          local.get 4
          local.get 85
          i32.store offset=20
        end
        local.get 4
        i32.load offset=16
        local.set 86
        i32.const 0
        local.set 87
        local.get 86
        local.set 88
        local.get 87
        local.set 89
        local.get 88
        local.get 89
        i32.lt_s
        local.set 90
        i32.const 1
        local.set 91
        local.get 90
        local.get 91
        i32.and
        local.set 92
        block  ;; label = @3
          local.get 92
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 93
          local.get 4
          local.get 93
          i32.store offset=16
        end
        local.get 4
        i32.load offset=16
        local.set 94
        local.get 4
        i32.load offset=80
        local.set 95
        local.get 94
        local.set 96
        local.get 95
        local.set 97
        local.get 96
        local.get 97
        i32.ge_s
        local.set 98
        i32.const 1
        local.set 99
        local.get 98
        local.get 99
        i32.and
        local.set 100
        block  ;; label = @3
          local.get 100
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load offset=80
          local.set 101
          i32.const 1
          local.set 102
          local.get 101
          local.get 102
          i32.sub
          local.set 103
          local.get 4
          local.get 103
          i32.store offset=16
        end
        i32.const 0
        local.set 104
        local.get 104
        i32.load offset=4832
        local.set 105
        local.get 4
        i32.load offset=20
        local.set 106
        local.get 4
        i32.load offset=16
        local.set 107
        local.get 4
        i32.load offset=92
        local.set 108
        local.get 4
        i32.load offset=20
        local.set 109
        local.get 4
        i32.load offset=16
        local.set 110
        local.get 4
        i32.load offset=80
        local.set 111
        local.get 109
        local.get 110
        local.get 111
        call $idx2
        local.set 112
        i32.const 3
        local.set 113
        local.get 112
        local.get 113
        i32.shl
        local.set 114
        local.get 108
        local.get 114
        i32.add
        local.set 115
        local.get 115
        f64.load
        local.set 116
        local.get 4
        local.get 116
        f64.store offset=8
        local.get 4
        local.get 107
        i32.store offset=4
        local.get 4
        local.get 106
        i32.store
        i32.const 1467
        local.set 117
        local.get 105
        local.get 117
        local.get 4
        call $fprintf
        drop
        local.get 4
        i32.load offset=24
        local.set 118
        i32.const 1
        local.set 119
        local.get 118
        local.get 119
        i32.add
        local.set 120
        local.get 4
        local.get 120
        i32.store offset=24
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 121
    local.get 121
    i32.load offset=4832
    local.set 122
    i32.const 3109
    local.set 123
    i32.const 0
    local.set 124
    local.get 122
    local.get 123
    local.get 124
    call $fprintf
    drop
    i32.const 96
    local.set 125
    local.get 4
    local.get 125
    i32.add
    local.set 126
    local.get 126
    global.set $__stack_pointer
    return)
  (func $spin_delay (type 17) (param i64)
    (local i32 i32 i32 i64 i64 i64 i64 i64 i64 i32 i32 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    global.get $__stack_pointer
    local.set 1
    i32.const 32
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i64.store offset=24
    i64.const 0
    local.set 4
    local.get 3
    local.get 4
    i64.store offset=16
    i64.const 0
    local.set 5
    local.get 3
    local.get 5
    i64.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i64.load offset=8
        local.set 6
        local.get 3
        i64.load offset=24
        local.set 7
        local.get 6
        local.set 8
        local.get 7
        local.set 9
        local.get 8
        local.get 9
        i64.lt_s
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
        local.get 3
        i64.load offset=8
        local.set 13
        i64.const -7046029254386353131
        local.set 14
        local.get 13
        local.get 14
        i64.xor
        local.set 15
        i64.const 7
        local.set 16
        local.get 15
        local.get 16
        i64.and
        local.set 17
        local.get 3
        i64.load offset=16
        local.set 18
        local.get 18
        local.get 17
        i64.add
        local.set 19
        local.get 3
        local.get 19
        i64.store offset=16
        local.get 3
        i64.load offset=8
        local.set 20
        i64.const 1
        local.set 21
        local.get 20
        local.get 21
        i64.add
        local.set 22
        local.get 3
        local.get 22
        i64.store offset=8
        br 0 (;@2;)
      end
    end
    local.get 3
    i64.load offset=16
    drop
    return)
  (func $join_target_fn (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 3
    i32.load offset=12
    local.set 4
    local.get 3
    local.get 4
    i32.store offset=8
    block  ;; label = @1
      loop  ;; label = @2
        local.get 3
        i32.load offset=8
        local.set 5
        local.get 5
        i32.atomic.load
        local.set 6
        local.get 3
        local.get 6
        i32.store offset=4
        local.get 3
        i32.load offset=4
        local.set 7
        local.get 7
        br_if 1 (;@1;)
        br 0 (;@2;)
      end
    end
    i32.const 0
    local.set 8
    local.get 8
    return)
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
      i32.load offset=6000
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 0
        i32.const 1
        i32.atomic.rmw.xchg offset=6500
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        loop  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=6500
            br_if 0 (;@4;)
            i32.const 0
            i32.const 1
            i32.atomic.rmw.xchg offset=6500
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
        i32.load offset=6000
        br_if 0 (;@2;)
        i32.const 0
        i32.const 2
        i32.store offset=6020
        i32.const 0
        i64.const -1
        i64.store offset=6012 align=4
        i32.const 0
        i64.const 281474976776192
        i64.store offset=6004 align=4
        i32.const 0
        i64.const 2
        i64.store offset=6468 align=4
        i32.const 0
        local.get 1
        i32.const 4
        i32.add
        i32.const -16
        i32.and
        i32.const 1431655768
        i32.xor
        i32.store offset=6000
      end
      i32.const 0
      i32.const 0
      i32.atomic.store offset=6500
    end
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=6468
      i32.const 2
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 1
      i32.atomic.rmw.xchg offset=6472
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      local.set 2
      loop  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=6472
          br_if 0 (;@3;)
          i32.const 0
          i32.const 1
          i32.atomic.rmw.xchg offset=6472
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
                          i32.load offset=6048
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=6000
                            local.tee 3
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.const 1
                              i32.atomic.rmw.xchg offset=6500
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 1
                              local.set 2
                              loop  ;; label = @14
                                block  ;; label = @15
                                  i32.const 0
                                  i32.load offset=6500
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  i32.const 1
                                  i32.atomic.rmw.xchg offset=6500
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
                              i32.load offset=6000
                              local.tee 3
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 2
                              i32.store offset=6020
                              i32.const 0
                              i64.const -1
                              i64.store offset=6012 align=4
                              i32.const 0
                              i64.const 281474976776192
                              i64.store offset=6004 align=4
                              i32.const 0
                              i64.const 2
                              i64.store offset=6468 align=4
                              i32.const 0
                              local.get 1
                              i32.const 8
                              i32.add
                              i32.const -16
                              i32.and
                              i32.const 1431655768
                              i32.xor
                              local.tee 3
                              i32.store offset=6000
                            end
                            i32.const 0
                            i32.const 0
                            i32.atomic.store offset=6500
                          end
                          i32.const 131072
                          i32.const 73168
                          i32.lt_u
                          br_if 1 (;@10;)
                          i32.const 131072
                          i32.const 73168
                          i32.sub
                          i32.const 89
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 2
                          i32.const 0
                          i32.const 73168
                          i32.store offset=6476
                          i32.const 0
                          i32.const 73168
                          i32.store offset=6040
                          i32.const 0
                          local.get 3
                          i32.store offset=6060
                          i32.const 0
                          i32.const -1
                          i32.store offset=6056
                          i32.const 0
                          i32.const 131072
                          i32.const 73168
                          i32.sub
                          i32.store offset=6480
                          loop  ;; label = @12
                            local.get 2
                            i32.const 6084
                            i32.add
                            local.get 2
                            i32.const 6072
                            i32.add
                            local.tee 3
                            i32.store
                            local.get 3
                            local.get 2
                            i32.const 6064
                            i32.add
                            local.tee 4
                            i32.store
                            local.get 2
                            i32.const 6076
                            i32.add
                            local.get 4
                            i32.store
                            local.get 2
                            i32.const 6092
                            i32.add
                            local.get 2
                            i32.const 6080
                            i32.add
                            local.tee 4
                            i32.store
                            local.get 4
                            local.get 3
                            i32.store
                            local.get 2
                            i32.const 6100
                            i32.add
                            local.get 2
                            i32.const 6088
                            i32.add
                            local.tee 3
                            i32.store
                            local.get 3
                            local.get 4
                            i32.store
                            local.get 2
                            i32.const 6096
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
                          i32.const 73168
                          i32.const -8
                          i32.const 73168
                          i32.sub
                          i32.const 15
                          i32.and
                          local.tee 2
                          i32.add
                          local.tee 3
                          i32.const 4
                          i32.add
                          i32.const 131072
                          i32.const 73168
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
                          i32.load offset=6016
                          i32.store offset=6052
                          i32.const 0
                          local.get 2
                          i32.store offset=6036
                          i32.const 0
                          local.get 3
                          i32.store offset=6048
                          local.get 4
                          i32.const 73168
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
                              i32.load offset=6024
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
                                  i32.const 6064
                                  i32.add
                                  local.tee 2
                                  local.get 3
                                  i32.const 6072
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
                                  i32.store offset=6024
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
                            i32.load offset=6032
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
                                  i32.const 6064
                                  i32.add
                                  local.tee 4
                                  local.get 2
                                  i32.const 6072
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
                                  i32.store offset=6024
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
                                i32.const 6064
                                i32.add
                                local.set 6
                                i32.const 0
                                i32.load offset=6044
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
                                    i32.store offset=6024
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
                              i32.store offset=6044
                              i32.const 0
                              local.get 4
                              i32.store offset=6032
                              br 12 (;@1;)
                            end
                            i32.const 0
                            i32.load offset=6028
                            local.tee 9
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 9
                            i32.ctz
                            i32.const 2
                            i32.shl
                            i32.const 6328
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
                              i32.load offset=6040
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
                          i32.load offset=6028
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
                                  i32.const 6328
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
                                i32.const 6328
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
                          i32.load offset=6032
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
                            i32.load offset=6040
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
                          i32.load offset=6032
                          local.tee 2
                          local.get 6
                          i32.lt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=6044
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
                          i32.store offset=6032
                          i32.const 0
                          local.get 0
                          i32.store offset=6044
                          local.get 3
                          i32.const 8
                          i32.add
                          local.set 2
                          br 10 (;@1;)
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=6036
                          local.tee 2
                          local.get 6
                          i32.le_u
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=6048
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
                          i32.store offset=6036
                          i32.const 0
                          local.get 4
                          i32.store offset=6048
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
                          i32.load offset=6000
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.const 1
                            i32.atomic.rmw.xchg offset=6500
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 1
                            local.set 2
                            loop  ;; label = @13
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=6500
                                br_if 0 (;@14;)
                                i32.const 0
                                i32.const 1
                                i32.atomic.rmw.xchg offset=6500
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
                            i32.load offset=6000
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.const 2
                            i32.store offset=6020
                            i32.const 0
                            i64.const -1
                            i64.store offset=6012 align=4
                            i32.const 0
                            i64.const 281474976776192
                            i64.store offset=6004 align=4
                            i32.const 0
                            i64.const 2
                            i64.store offset=6468 align=4
                            i32.const 0
                            local.get 1
                            i32.const 12
                            i32.add
                            i32.const -16
                            i32.and
                            i32.const 1431655768
                            i32.xor
                            i32.store offset=6000
                          end
                          i32.const 0
                          i32.const 0
                          i32.atomic.store offset=6500
                        end
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=6008
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
                          i32.load offset=6464
                          local.tee 2
                          i32.eqz
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=6456
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
                        i32.load8_u offset=6468
                        i32.const 4
                        i32.and
                        br_if 6 (;@4;)
                        i32.const 0
                        local.set 3
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=6048
                          local.tee 2
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 6476
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
                          i32.atomic.rmw.xchg offset=6500
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 1
                          local.set 2
                          loop  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=6500
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.const 1
                              i32.atomic.rmw.xchg offset=6500
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
                              i32.load offset=6004
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
                              i32.load offset=6464
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=6456
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
                          i32.load offset=6036
                          i32.sub
                          i32.const 0
                          i32.load offset=6008
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
                            i32.load offset=6008
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
              i32.load offset=6468
              i32.const 4
              i32.or
              i32.store offset=6468
              i32.const -1
              local.set 0
              local.get 2
              local.set 5
            end
            i32.const 0
            i32.const 0
            i32.atomic.store offset=6500
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
                  i32.atomic.rmw.xchg offset=6500
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 2
                  loop  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=6500
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.const 1
                      i32.atomic.rmw.xchg offset=6500
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
                i32.atomic.store offset=6500
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
            i32.load offset=6456
            local.get 5
            i32.add
            local.tee 2
            i32.store offset=6456
            block  ;; label = @5
              local.get 2
              i32.const 0
              i32.load offset=6460
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.get 2
              i32.store offset=6460
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
                              i32.load offset=6048
                              local.tee 3
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 6476
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
                                i32.load offset=6040
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
                              i32.store offset=6040
                            end
                            i32.const 0
                            local.set 2
                            i32.const 0
                            local.get 5
                            i32.store offset=6480
                            i32.const 0
                            local.get 0
                            i32.store offset=6476
                            i32.const 0
                            i32.const -1
                            i32.store offset=6056
                            i32.const 0
                            i32.const 0
                            i32.load offset=6000
                            i32.store offset=6060
                            i32.const 0
                            i32.const 0
                            i32.store offset=6488
                            loop  ;; label = @13
                              local.get 2
                              i32.const 6084
                              i32.add
                              local.get 2
                              i32.const 6072
                              i32.add
                              local.tee 3
                              i32.store
                              local.get 3
                              local.get 2
                              i32.const 6064
                              i32.add
                              local.tee 4
                              i32.store
                              local.get 2
                              i32.const 6076
                              i32.add
                              local.get 4
                              i32.store
                              local.get 2
                              i32.const 6092
                              i32.add
                              local.get 2
                              i32.const 6080
                              i32.add
                              local.tee 4
                              i32.store
                              local.get 4
                              local.get 3
                              i32.store
                              local.get 2
                              i32.const 6100
                              i32.add
                              local.get 2
                              i32.const 6088
                              i32.add
                              local.tee 3
                              i32.store
                              local.get 3
                              local.get 4
                              i32.store
                              local.get 2
                              i32.const 6096
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
                            i32.load offset=6016
                            i32.store offset=6052
                            i32.const 0
                            local.get 2
                            i32.store offset=6036
                            i32.const 0
                            local.get 3
                            i32.store offset=6048
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
                          i32.load offset=6036
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
                          i32.load offset=6016
                          i32.store offset=6052
                          i32.const 0
                          local.get 4
                          i32.store offset=6036
                          i32.const 0
                          local.get 0
                          i32.store offset=6048
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
                          i32.load offset=6040
                          local.tee 8
                          i32.ge_u
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 0
                          i32.store offset=6040
                          local.get 0
                          local.set 8
                        end
                        local.get 0
                        local.get 5
                        i32.add
                        local.set 4
                        i32.const 6476
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
                            i32.const 6476
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
                            i32.store offset=6048
                            i32.const 0
                            i32.const 0
                            i32.load offset=6036
                            local.get 2
                            i32.add
                            local.tee 2
                            i32.store offset=6036
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
                            i32.load offset=6044
                            i32.ne
                            br_if 0 (;@12;)
                            i32.const 0
                            local.get 6
                            i32.store offset=6044
                            i32.const 0
                            i32.const 0
                            i32.load offset=6032
                            local.get 2
                            i32.add
                            local.tee 2
                            i32.store offset=6032
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
                            i32.const 6064
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
                              i32.load offset=6024
                              i32.const -2
                              local.get 8
                              i32.rotl
                              i32.and
                              i32.store offset=6024
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
                        i32.load offset=6016
                        i32.store offset=6052
                        i32.const 0
                        local.get 2
                        i32.store offset=6036
                        i32.const 0
                        local.get 11
                        i32.store offset=6048
                        local.get 8
                        i32.const 16
                        i32.add
                        i32.const 0
                        i64.load offset=6484 align=4
                        i64.store align=4
                        local.get 8
                        i32.const 0
                        i64.load offset=6476 align=4
                        i64.store offset=8 align=4
                        i32.const 0
                        local.get 8
                        i32.const 8
                        i32.add
                        i32.store offset=6484
                        i32.const 0
                        local.get 5
                        i32.store offset=6480
                        i32.const 0
                        local.get 0
                        i32.store offset=6476
                        i32.const 0
                        i32.const 0
                        i32.store offset=6488
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
                          i32.const 6064
                          i32.add
                          local.set 2
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=6024
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
                              i32.store offset=6024
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
                        i32.const 6328
                        i32.add
                        local.set 4
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=6028
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
                          i32.store offset=6028
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
                      i32.load offset=6036
                      local.tee 2
                      local.get 6
                      i32.le_u
                      br_if 5 (;@4;)
                      i32.const 0
                      i32.load offset=6048
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
                      i32.store offset=6036
                      i32.const 0
                      local.get 4
                      i32.store offset=6048
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
                      i32.const 6328
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
                      i32.load offset=6028
                      i32.const -2
                      local.get 4
                      i32.rotl
                      i32.and
                      i32.store offset=6028
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
                i32.const 6064
                i32.add
                local.set 3
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=6024
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
                    i32.store offset=6024
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
              i32.const 6328
              i32.add
              local.set 4
              block  ;; label = @6
                i32.const 0
                i32.load offset=6028
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
                i32.store offset=6028
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
              i32.const 6328
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
              i32.store offset=6028
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
            i32.const 6064
            i32.add
            local.set 2
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=6024
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
                i32.store offset=6024
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
          i32.const 6328
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
            i32.store offset=6028
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
            i32.const 6328
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
            i32.store offset=6028
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
          i32.const 6064
          i32.add
          local.set 6
          i32.const 0
          i32.load offset=6044
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
              i32.store offset=6024
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
        i32.store offset=6044
        i32.const 0
        local.get 3
        i32.store offset=6032
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 2
    end
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=6468
      i32.const 2
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.atomic.store offset=6472
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
        i32.load8_u offset=6468
        i32.const 2
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.atomic.rmw.xchg offset=6472
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        loop  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=6472
            br_if 0 (;@4;)
            i32.const 0
            i32.const 1
            i32.atomic.rmw.xchg offset=6472
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
          i32.load offset=6040
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
                i32.load offset=6044
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
                  i32.const 6064
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
                    i32.load offset=6024
                    i32.const -2
                    local.get 5
                    i32.rotl
                    i32.and
                    i32.store offset=6024
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
              i32.store offset=6032
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
              i32.const 6328
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
              i32.load offset=6028
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store offset=6028
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
                    i32.load offset=6048
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    local.get 1
                    i32.store offset=6048
                    i32.const 0
                    i32.const 0
                    i32.load offset=6036
                    local.get 2
                    i32.add
                    local.tee 2
                    i32.store offset=6036
                    local.get 1
                    local.get 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    i32.const 0
                    i32.load offset=6044
                    i32.ne
                    br_if 6 (;@2;)
                    i32.const 0
                    i32.const 0
                    i32.store offset=6032
                    i32.const 0
                    i32.const 0
                    i32.store offset=6044
                    br 6 (;@2;)
                  end
                  block  ;; label = @8
                    local.get 3
                    i32.const 0
                    i32.load offset=6044
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    local.get 1
                    i32.store offset=6044
                    i32.const 0
                    i32.const 0
                    i32.load offset=6032
                    local.get 2
                    i32.add
                    local.tee 2
                    i32.store offset=6032
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
                    i32.const 6064
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
                      i32.load offset=6024
                      i32.const -2
                      local.get 5
                      i32.rotl
                      i32.and
                      i32.store offset=6024
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
                    i32.load offset=6040
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
                i32.const 6328
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
                i32.load offset=6028
                i32.const -2
                local.get 4
                i32.rotl
                i32.and
                i32.store offset=6028
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
          i32.load offset=6044
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          local.get 2
          i32.store offset=6032
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
          i32.const 6064
          i32.add
          local.set 0
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=6024
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
              i32.store offset=6024
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
        i32.const 6328
        i32.add
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=6028
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
            i32.store offset=6028
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
        i32.load offset=6056
        i32.const -1
        i32.add
        local.tee 2
        i32.const -1
        local.get 2
        select
        i32.store offset=6056
      end
      i32.const 0
      i32.load8_u offset=6468
      i32.const 2
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.atomic.store offset=6472
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
        i32.const 73168
        i32.eqz
        br_if 0 (;@2;)
        i32.const 73168
        i32.const 7632
        i32.sub
        local.set 1
        br 1 (;@1;)
      end
      global.get $__stack_pointer
      local.set 1
      i32.const 73168
      i32.const 7632
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
    i32.const 6520
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
    i32.load offset=6508
    i32.store offset=12
    i32.const 0
    local.get 1
    i32.const 8388608
    local.get 1
    i32.const 8388608
    i32.lt_s
    select
    i32.store offset=5868
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
    i32.const 4672
    i32.add
    i32.load16_u
    i32.const 3116
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
    i32.const 4
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
  (func $__ofl_lock (type 8) (result i32)
    i32.const 7592
    call $__lock
    i32.const 7596)
  (func $__ofl_unlock (type 9)
    i32.const 7592
    call $__unlock)
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
      i32.load offset=7600
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
      i32.load offset=5864
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
      i32.load offset=5728
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
  (func $frexp (type 18) (param f64 i32) (result f64)
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
  (func $printf_core (type 19) (param i32 i32 i32 i32 i32) (result i32)
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
                            i32.const 4783
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
                                                          i32.const 1190
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
                                                    i32.const 1190
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
                                                      i32.const 5312
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
                                                    i32.const 1190
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
                                                  i32.const 1190
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
                                                  i32.const 1190
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
                                                  i32.const 1191
                                                  local.set 31
                                                  br 1 (;@22;)
                                                end
                                                i32.const 1192
                                                i32.const 1190
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
                                          i32.const 1190
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
                                      i32.const 1929
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
                                    i32.const 1190
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
                              i32.const 1200
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
                              i32.const 1203
                              local.set 37
                              br 1 (;@12;)
                            end
                            i32.const 1206
                            i32.const 1201
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
                              i32.const 1419
                              i32.const 1575
                              local.get 30
                              i32.const 32
                              i32.and
                              local.tee 19
                              select
                              i32.const 1463
                              i32.const 1579
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
                            i32.const 1681
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
                      i32.const 1190
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
                        i32.const 1681
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
                i32.const 5312
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
  (func $pop_arg (type 12) (param i32 i32 i32)
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
    i32.const 2900
    i32.const 5600
    call $fputs
    drop
    call $abort
    unreachable)
  (func $__toread (type 2) (param i32) (result i32)
    (local i32 i32)
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
      i32.load offset=20
      local.get 0
      i32.load offset=24
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.const 0
      local.get 0
      i32.load offset=32
      call_indirect (type 0)
      drop
    end
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i64.const 0
    i64.store offset=16
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const 4
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
    local.get 0
    i32.load offset=40
    local.get 0
    i32.load offset=44
    i32.add
    local.tee 2
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 27
    i32.shl
    i32.const 31
    i32.shr_s)
  (func $__uflow (type 2) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const -1
    local.set 2
    block  ;; label = @1
      local.get 0
      call $__toread
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.const 15
      i32.add
      i32.const 1
      local.get 0
      i32.load offset=28
      call_indirect (type 0)
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load8_u offset=15
      local.set 2
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $__shlim (type 20) (param i32 i64)
    (local i32 i32)
    local.get 0
    local.get 1
    i64.store offset=96
    local.get 0
    local.get 0
    i32.load offset=40
    local.get 0
    i32.load offset=4
    local.tee 2
    i32.sub
    i64.extend_i32_s
    i64.store offset=104
    local.get 0
    i32.load offset=8
    local.set 3
    block  ;; label = @1
      local.get 1
      i64.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.sub
      i64.extend_i32_s
      local.get 1
      i64.le_s
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      i32.wrap_i64
      i32.add
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store offset=92)
  (func $__shgetc (type 2) (param i32) (result i32)
    (local i32 i32 i64 i64 i32)
    local.get 0
    i64.load offset=104
    local.get 0
    i32.load offset=4
    local.tee 1
    local.get 0
    i32.load offset=40
    local.tee 2
    i32.sub
    i64.extend_i32_s
    i64.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i64.load offset=96
          local.tee 4
          i64.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i64.ge_s
          br_if 1 (;@2;)
        end
        local.get 0
        call $__uflow
        local.tee 2
        i32.const -1
        i32.gt_s
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        local.set 1
        local.get 0
        i32.load offset=40
        local.set 2
      end
      local.get 0
      i64.const -1
      i64.store offset=96
      local.get 0
      local.get 1
      i32.store offset=92
      local.get 0
      local.get 3
      local.get 2
      local.get 1
      i32.sub
      i64.extend_i32_s
      i64.add
      i64.store offset=104
      i32.const -1
      return
    end
    local.get 3
    i64.const 1
    i64.add
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load offset=8
    local.set 5
    block  ;; label = @1
      local.get 0
      i64.load offset=96
      local.tee 4
      i64.const 0
      i64.eq
      br_if 0 (;@1;)
      local.get 4
      local.get 3
      i64.sub
      local.tee 4
      local.get 5
      local.get 1
      i32.sub
      i64.extend_i32_s
      i64.ge_s
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      i32.wrap_i64
      i32.add
      local.set 5
    end
    local.get 0
    local.get 5
    i32.store offset=92
    local.get 0
    local.get 3
    local.get 0
    i32.load offset=40
    local.tee 5
    local.get 1
    i32.sub
    i64.extend_i32_s
    i64.add
    i64.store offset=104
    block  ;; label = @1
      local.get 1
      local.get 5
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const -1
      i32.add
      local.get 2
      i32.store8
    end
    local.get 2)
  (func $__intscan (type 21) (param i32 i32 i32 i64) (result i64)
    (local i32 i32 i32 i64 i64 i64 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 36
                i32.gt_u
                br_if 0 (;@6;)
                local.get 1
                i32.const 1
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    loop  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load offset=4
                          local.tee 5
                          local.get 0
                          i32.load offset=92
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 5
                          i32.const 1
                          i32.add
                          i32.store offset=4
                          local.get 5
                          i32.load8_u
                          local.set 5
                          br 1 (;@10;)
                        end
                        local.get 0
                        call $__shgetc
                        local.set 5
                      end
                      local.get 5
                      i32.const -9
                      i32.add
                      i32.const 5
                      i32.lt_u
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        local.get 5
                        i32.const -32
                        i32.add
                        br_table 1 (;@9;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 2 (;@8;) 0 (;@10;) 2 (;@8;) 0 (;@10;) 2 (;@8;)
                      end
                    end
                    i32.const -1
                    i32.const 0
                    local.get 5
                    i32.const 45
                    i32.eq
                    select
                    local.set 6
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=4
                      local.tee 5
                      local.get 0
                      i32.load offset=92
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 5
                      i32.const 1
                      i32.add
                      i32.store offset=4
                      local.get 5
                      i32.load8_u
                      local.set 5
                      br 2 (;@7;)
                    end
                    local.get 0
                    call $__shgetc
                    local.set 5
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 6
                end
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.const 0
                    i32.ne
                    local.get 1
                    i32.const 16
                    i32.ne
                    i32.and
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 48
                    i32.ne
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load offset=4
                        local.tee 5
                        local.get 0
                        i32.load offset=92
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 5
                        i32.const 1
                        i32.add
                        i32.store offset=4
                        local.get 5
                        i32.load8_u
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 0
                      call $__shgetc
                      local.set 5
                    end
                    block  ;; label = @9
                      local.get 5
                      i32.const -33
                      i32.and
                      i32.const 88
                      i32.ne
                      br_if 0 (;@9;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load offset=4
                          local.tee 5
                          local.get 0
                          i32.load offset=92
                          i32.eq
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 5
                          i32.const 1
                          i32.add
                          i32.store offset=4
                          local.get 5
                          i32.load8_u
                          local.set 5
                          br 1 (;@10;)
                        end
                        local.get 0
                        call $__shgetc
                        local.set 5
                      end
                      i32.const 16
                      local.set 1
                      local.get 5
                      i32.const 5329
                      i32.add
                      i32.load8_u
                      i32.const 16
                      i32.lt_u
                      br_if 5 (;@4;)
                      i64.const 0
                      local.set 3
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i64.load offset=96
                          i64.const 0
                          i64.lt_s
                          br_if 0 (;@11;)
                          local.get 0
                          local.get 0
                          i32.load offset=4
                          local.tee 5
                          i32.const -1
                          i32.add
                          i32.store offset=4
                          local.get 2
                          i32.eqz
                          br_if 1 (;@10;)
                          local.get 0
                          local.get 5
                          i32.const -2
                          i32.add
                          i32.store offset=4
                          br 10 (;@1;)
                        end
                        local.get 2
                        br_if 9 (;@1;)
                      end
                      i64.const 0
                      local.set 3
                      local.get 0
                      i64.const 0
                      call $__shlim
                      br 8 (;@1;)
                    end
                    local.get 1
                    br_if 1 (;@7;)
                    i32.const 8
                    local.set 1
                    br 4 (;@4;)
                  end
                  local.get 1
                  i32.const 10
                  local.get 1
                  select
                  local.tee 1
                  local.get 5
                  i32.const 5329
                  i32.add
                  i32.load8_u
                  i32.gt_u
                  br_if 0 (;@7;)
                  i64.const 0
                  local.set 3
                  block  ;; label = @8
                    local.get 0
                    i64.load offset=96
                    i64.const 0
                    i64.lt_s
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 0
                    i32.load offset=4
                    i32.const -1
                    i32.add
                    i32.store offset=4
                  end
                  local.get 0
                  i64.const 0
                  call $__shlim
                  global.get $__tls_base
                  i32.const 0
                  i32.add
                  i32.const 28
                  i32.store
                  br 6 (;@1;)
                end
                local.get 1
                i32.const 10
                i32.ne
                br_if 2 (;@4;)
                i64.const 0
                local.set 7
                block  ;; label = @7
                  local.get 5
                  i32.const -48
                  i32.add
                  local.tee 2
                  i32.const 9
                  i32.gt_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 1
                  loop  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load offset=4
                        local.tee 5
                        local.get 0
                        i32.load offset=92
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 0
                        local.get 5
                        i32.const 1
                        i32.add
                        i32.store offset=4
                        local.get 5
                        i32.load8_u
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 0
                      call $__shgetc
                      local.set 5
                    end
                    local.get 1
                    i32.const 10
                    i32.mul
                    local.get 2
                    i32.add
                    local.set 1
                    block  ;; label = @9
                      local.get 5
                      i32.const -48
                      i32.add
                      local.tee 2
                      i32.const 9
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 1
                      i32.const 429496729
                      i32.lt_u
                      br_if 1 (;@8;)
                    end
                  end
                  local.get 1
                  i64.extend_i32_u
                  local.set 7
                end
                local.get 2
                i32.const 9
                i32.gt_u
                br_if 1 (;@5;)
                local.get 7
                i64.const 10
                i64.mul
                local.set 8
                local.get 2
                i64.extend_i32_u
                local.set 9
                loop  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=4
                      local.tee 5
                      local.get 0
                      i32.load offset=92
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 5
                      i32.const 1
                      i32.add
                      i32.store offset=4
                      local.get 5
                      i32.load8_u
                      local.set 5
                      br 1 (;@8;)
                    end
                    local.get 0
                    call $__shgetc
                    local.set 5
                  end
                  local.get 8
                  local.get 9
                  i64.add
                  local.set 7
                  local.get 5
                  i32.const -48
                  i32.add
                  local.tee 2
                  i32.const 9
                  i32.gt_u
                  br_if 2 (;@5;)
                  local.get 7
                  i64.const 1844674407370955162
                  i64.ge_u
                  br_if 2 (;@5;)
                  local.get 7
                  i64.const 10
                  i64.mul
                  local.tee 8
                  local.get 2
                  i64.extend_i32_u
                  local.tee 9
                  i64.const -1
                  i64.xor
                  i64.le_u
                  br_if 0 (;@7;)
                end
                i32.const 10
                local.set 1
                br 3 (;@3;)
              end
              global.get $__tls_base
              i32.const 0
              i32.add
              i32.const 28
              i32.store
              i64.const 0
              local.set 3
              br 4 (;@1;)
            end
            i32.const 10
            local.set 1
            local.get 2
            i32.const 9
            i32.le_u
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 1
            local.get 1
            i32.const -1
            i32.add
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            i64.const 0
            local.set 7
            block  ;; label = @5
              local.get 1
              local.get 5
              i32.const 5329
              i32.add
              i32.load8_u
              local.tee 10
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 2
              loop  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load offset=4
                    local.tee 5
                    local.get 0
                    i32.load offset=92
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 0
                    local.get 5
                    i32.const 1
                    i32.add
                    i32.store offset=4
                    local.get 5
                    i32.load8_u
                    local.set 5
                    br 1 (;@7;)
                  end
                  local.get 0
                  call $__shgetc
                  local.set 5
                end
                local.get 10
                local.get 2
                local.get 1
                i32.mul
                i32.add
                local.set 2
                block  ;; label = @7
                  local.get 1
                  local.get 5
                  i32.const 5329
                  i32.add
                  i32.load8_u
                  local.tee 10
                  i32.le_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 119304647
                  i32.lt_u
                  br_if 1 (;@6;)
                end
              end
              local.get 2
              i64.extend_i32_u
              local.set 7
            end
            local.get 1
            local.get 10
            i32.le_u
            br_if 1 (;@3;)
            local.get 1
            i64.extend_i32_u
            local.set 8
            loop  ;; label = @5
              local.get 7
              local.get 8
              i64.mul
              local.tee 9
              local.get 10
              i64.extend_i32_u
              i64.const 255
              i64.and
              local.tee 11
              i64.const -1
              i64.xor
              i64.gt_u
              br_if 2 (;@3;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=4
                  local.tee 5
                  local.get 0
                  i32.load offset=92
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 5
                  i32.const 1
                  i32.add
                  i32.store offset=4
                  local.get 5
                  i32.load8_u
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 0
                call $__shgetc
                local.set 5
              end
              local.get 9
              local.get 11
              i64.add
              local.set 7
              local.get 1
              local.get 5
              i32.const 5329
              i32.add
              i32.load8_u
              local.tee 10
              i32.le_u
              br_if 2 (;@3;)
              local.get 4
              local.get 8
              i64.const 0
              local.get 7
              i64.const 0
              call $__multi3
              local.get 4
              i64.load offset=8
              i64.const 0
              i64.ne
              br_if 2 (;@3;)
              br 0 (;@5;)
            end
          end
          local.get 1
          i32.const 23
          i32.mul
          i32.const 5
          i32.shr_u
          i32.const 7
          i32.and
          i32.const 5585
          i32.add
          i32.load8_s
          local.set 12
          i64.const 0
          local.set 7
          block  ;; label = @4
            local.get 1
            local.get 5
            i32.const 5329
            i32.add
            i32.load8_u
            local.tee 2
            i32.le_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 10
            loop  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=4
                  local.tee 5
                  local.get 0
                  i32.load offset=92
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 5
                  i32.const 1
                  i32.add
                  i32.store offset=4
                  local.get 5
                  i32.load8_u
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 0
                call $__shgetc
                local.set 5
              end
              local.get 2
              local.get 10
              local.get 12
              i32.shl
              i32.or
              local.set 10
              block  ;; label = @6
                local.get 1
                local.get 5
                i32.const 5329
                i32.add
                i32.load8_u
                local.tee 2
                i32.le_u
                br_if 0 (;@6;)
                local.get 10
                i32.const 134217728
                i32.lt_u
                br_if 1 (;@5;)
              end
            end
            local.get 10
            i64.extend_i32_u
            local.set 7
          end
          local.get 1
          local.get 2
          i32.le_u
          br_if 0 (;@3;)
          i64.const -1
          local.get 12
          i64.extend_i32_u
          local.tee 9
          i64.shr_u
          local.tee 11
          local.get 7
          i64.lt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 2
            i64.extend_i32_u
            i64.const 255
            i64.and
            local.set 8
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 5
                local.get 0
                i32.load offset=92
                i32.eq
                br_if 0 (;@6;)
                local.get 0
                local.get 5
                i32.const 1
                i32.add
                i32.store offset=4
                local.get 5
                i32.load8_u
                local.set 5
                br 1 (;@5;)
              end
              local.get 0
              call $__shgetc
              local.set 5
            end
            local.get 7
            local.get 9
            i64.shl
            local.get 8
            i64.or
            local.set 7
            local.get 1
            local.get 5
            i32.const 5329
            i32.add
            i32.load8_u
            local.tee 2
            i32.le_u
            br_if 1 (;@3;)
            local.get 7
            local.get 11
            i64.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 1
        local.get 5
        i32.const 5329
        i32.add
        i32.load8_u
        i32.le_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 5
              local.get 0
              i32.load offset=92
              i32.eq
              br_if 0 (;@5;)
              local.get 0
              local.get 5
              i32.const 1
              i32.add
              i32.store offset=4
              local.get 5
              i32.load8_u
              local.set 5
              br 1 (;@4;)
            end
            local.get 0
            call $__shgetc
            local.set 5
          end
          local.get 1
          local.get 5
          i32.const 5329
          i32.add
          i32.load8_u
          i32.gt_u
          br_if 0 (;@3;)
        end
        global.get $__tls_base
        i32.const 0
        i32.add
        i32.const 68
        i32.store
        local.get 6
        i32.const 0
        local.get 3
        i64.const 1
        i64.and
        i64.eqz
        select
        local.set 6
        local.get 3
        local.set 7
      end
      block  ;; label = @2
        local.get 0
        i64.load offset=96
        i64.const 0
        i64.lt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 0
        i32.load offset=4
        i32.const -1
        i32.add
        i32.store offset=4
      end
      block  ;; label = @2
        local.get 7
        local.get 3
        i64.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          i32.wrap_i64
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 6
          br_if 0 (;@3;)
          global.get $__tls_base
          i32.const 0
          i32.add
          i32.const 68
          i32.store
          local.get 3
          i64.const -1
          i64.add
          local.set 3
          br 2 (;@1;)
        end
        local.get 7
        local.get 3
        i64.le_u
        br_if 0 (;@2;)
        global.get $__tls_base
        i32.const 0
        i32.add
        i32.const 68
        i32.store
        br 1 (;@1;)
      end
      local.get 7
      local.get 6
      i64.extend_i32_s
      local.tee 3
      i64.xor
      local.get 3
      i64.sub
      local.set 3
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $strtoll (type 22) (param i32 i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=40
    local.get 3
    local.get 0
    i32.store offset=4
    local.get 3
    i32.const -1
    i32.store offset=8
    local.get 3
    i64.const 0
    call $__shlim
    local.get 3
    local.get 2
    i32.const 1
    i64.const -9223372036854775808
    call $__intscan
    local.set 4
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      local.get 3
      i32.load offset=4
      local.get 3
      i32.load offset=104
      i32.add
      local.get 3
      i32.load offset=40
      i32.sub
      i32.add
      i32.store
    end
    local.get 3
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $strcmp (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 1
    i32.load8_u
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.load8_u
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.const 255
      i32.and
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.load8_u
        local.set 2
        local.get 0
        i32.load8_u
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 2
        i32.const 255
        i32.and
        i32.eq
        br_if 0 (;@2;)
      end
    end
    local.get 3
    local.get 2
    i32.const 255
    i32.and
    i32.sub)
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
      i32.load8_s offset=6513
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
        i32.store8 offset=6513
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
  (func $__wasilibc_futex_wait (type 23) (param i32 i32 i32 i64) (result i32)
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
  (func $__wait (type 16) (param i32 i32 i32 i32)
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
  (func $pthread_cond_broadcast (type 2) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      call $__private_cond_signal
      return
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=12
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 8
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.load
        local.tee 0
        local.get 1
        local.get 0
        local.get 0
        i32.const 1
        i32.add
        i32.atomic.rmw.cmpxchg
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const 2147483647
      memory.atomic.notify
      drop
    end
    i32.const 0)
  (func $pthread_cond_destroy (type 2) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=12
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 12
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.load
        local.tee 2
        local.get 1
        local.get 2
        local.get 2
        i32.const -2147483648
        i32.or
        i32.atomic.rmw.cmpxchg
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 0
      loop  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        local.get 0
        local.get 2
        local.get 2
        i32.const 1
        i32.add
        i32.atomic.rmw.cmpxchg
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 0
      i32.const 2147483647
      memory.atomic.notify
      drop
      local.get 1
      i32.load
      local.tee 2
      i32.const 2147483647
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.const 0
        local.get 2
        i32.const 0
        call $__wait
        local.get 1
        i32.load
        local.tee 2
        i32.const 2147483647
        i32.and
        br_if 0 (;@2;)
      end
    end
    i32.const 0)
  (func $pthread_cond_init (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    i32.const 8
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.tee 4
    i64.const 0
    i64.store
    local.get 2
    i32.const 24
    i32.add
    local.tee 5
    i64.const 0
    i64.store
    local.get 2
    i32.const 32
    i32.add
    local.tee 6
    i64.const 0
    i64.store
    local.get 2
    i32.const 40
    i32.add
    local.tee 7
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store
    local.get 0
    local.get 2
    i64.load
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
    local.get 0
    i32.const 24
    i32.add
    local.get 5
    i64.load
    i64.store align=4
    local.get 0
    i32.const 32
    i32.add
    local.get 6
    i64.load
    i64.store align=4
    local.get 0
    i32.const 40
    i32.add
    local.get 7
    i64.load
    i64.store align=4
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.load
      local.tee 2
      i32.const 2147483647
      i32.and
      i32.store offset=16
      local.get 2
      i32.const -1
      i32.gt_s
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.store
    end
    i32.const 0)
  (func $__timedwait_cp (type 19) (param i32 i32 i32 i32 i32) (result i32)
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
  (func $__timedwait (type 19) (param i32 i32 i32 i32 i32) (result i32)
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
  (func $__pthread_cond_timedwait (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 24
    i32.add
    i32.const 0
    i32.store
    local.get 3
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    local.get 0
    i32.load offset=16
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load8_u
        i32.const 15
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 63
        local.set 4
        local.get 1
        i32.load offset=4
        i32.const 2147483647
        i32.and
        global.get $__tls_base
        i32.const 4
        i32.add
        i32.load offset=20
        i32.ne
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        i32.const 28
        local.set 4
        local.get 2
        i32.load offset=8
        i32.const 999999999
        i32.gt_u
        br_if 1 (;@1;)
      end
      call $__pthread_testcancel
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 8
          i32.add
          local.set 6
          local.get 0
          i32.load offset=8
          local.set 4
          loop  ;; label = @4
            local.get 0
            i32.load offset=12
            local.tee 7
            local.get 0
            local.get 7
            local.get 7
            i32.const 1
            i32.add
            i32.atomic.rmw.cmpxchg offset=12
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 0
        i32.const 32
        i32.add
        local.set 7
        block  ;; label = @3
          local.get 0
          i32.const 0
          i32.const 1
          i32.atomic.rmw.cmpxchg offset=32
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          i32.const 1
          i32.const 2
          i32.atomic.rmw.cmpxchg
          drop
          loop  ;; label = @4
            local.get 7
            i32.const 0
            i32.const 2
            i32.const 1
            call $__wait
            local.get 7
            i32.const 0
            i32.const 2
            i32.atomic.rmw.cmpxchg
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const 2
        i32.store offset=20
        local.get 3
        i32.const 0
        i32.store offset=16
        local.get 0
        i32.load offset=4
        local.set 4
        local.get 0
        local.get 3
        i32.const 8
        i32.add
        i32.store offset=4
        local.get 3
        local.get 4
        i32.store offset=12
        local.get 4
        local.get 0
        i32.const 20
        i32.add
        local.get 0
        i32.load offset=20
        select
        local.get 3
        i32.const 8
        i32.add
        i32.store
        local.get 3
        i32.const 20
        i32.add
        local.set 6
        loop  ;; label = @3
          local.get 7
          i32.load
          local.tee 8
          local.get 7
          local.get 8
          i32.const 0
          i32.atomic.rmw.cmpxchg
          i32.ne
          br_if 0 (;@3;)
        end
        i32.const 2
        local.set 4
        local.get 8
        i32.const 2
        i32.ne
        br_if 0 (;@2;)
        local.get 7
        i32.const 1
        memory.atomic.notify
        drop
      end
      local.get 1
      call $__pthread_mutex_unlock
      drop
      i32.const 2
      local.get 3
      i32.const 4
      i32.add
      call $__pthread_setcancelstate
      drop
      block  ;; label = @2
        local.get 3
        i32.load offset=4
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        i32.const 1
        i32.const 0
        call $__pthread_setcancelstate
        drop
      end
      local.get 6
      local.get 4
      local.get 3
      local.get 2
      local.get 5
      i32.eqz
      local.tee 8
      call $__timedwait_cp
      local.set 7
      block  ;; label = @2
        local.get 6
        i32.load
        local.get 4
        i32.ne
        br_if 0 (;@2;)
        loop  ;; label = @3
          block  ;; label = @4
            local.get 7
            i32.const 27
            i32.eq
            br_if 0 (;@4;)
            local.get 7
            br_if 2 (;@2;)
          end
          local.get 6
          local.get 4
          local.get 3
          local.get 2
          local.get 8
          call $__timedwait_cp
          local.set 7
          local.get 6
          i32.load
          local.get 4
          i32.eq
          br_if 0 (;@3;)
        end
      end
      i32.const 0
      local.get 7
      local.get 7
      i32.const 27
      i32.eq
      select
      local.set 8
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 8
            i32.const 11
            i32.ne
            br_if 0 (;@4;)
            i32.const 11
            i32.const 0
            local.get 0
            i32.load offset=8
            local.get 4
            i32.eq
            select
            local.set 8
          end
          local.get 0
          i32.const 12
          i32.add
          local.set 0
          loop  ;; label = @4
            local.get 0
            i32.load
            local.tee 7
            local.get 0
            local.get 7
            local.get 7
            i32.const -1
            i32.add
            i32.atomic.rmw.cmpxchg
            i32.ne
            br_if 0 (;@4;)
          end
          i32.const 0
          local.set 6
          local.get 7
          i32.const -2147483647
          i32.ne
          br_if 1 (;@2;)
          local.get 0
          i32.const 1
          memory.atomic.notify
          drop
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 3
          i32.const 0
          i32.const 2
          i32.atomic.rmw.cmpxchg offset=16
          local.tee 6
          br_if 0 (;@3;)
          local.get 0
          i32.const 32
          i32.add
          local.set 7
          block  ;; label = @4
            local.get 0
            i32.const 0
            i32.const 1
            i32.atomic.rmw.cmpxchg offset=32
            i32.eqz
            br_if 0 (;@4;)
            local.get 7
            i32.const 1
            i32.const 2
            i32.atomic.rmw.cmpxchg
            drop
            loop  ;; label = @5
              local.get 7
              i32.const 0
              i32.const 2
              i32.const 1
              call $__wait
              local.get 7
              i32.const 0
              i32.const 2
              i32.atomic.rmw.cmpxchg
              br_if 0 (;@5;)
            end
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.get 3
              i32.const 8
              i32.add
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              local.get 3
              i32.load offset=12
              i32.store offset=4
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=8
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 3
            i32.load offset=12
            i32.store offset=4
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=20
              local.get 3
              i32.const 8
              i32.add
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              local.get 3
              i32.load offset=8
              i32.store offset=20
              br 1 (;@4;)
            end
            local.get 3
            i32.load offset=12
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 3
            i32.load offset=8
            i32.store
          end
          loop  ;; label = @4
            local.get 7
            i32.load
            local.tee 0
            local.get 7
            local.get 0
            i32.const 0
            i32.atomic.rmw.cmpxchg
            i32.ne
            br_if 0 (;@4;)
          end
          block  ;; label = @4
            local.get 0
            i32.const 2
            i32.ne
            br_if 0 (;@4;)
            local.get 7
            i32.const 1
            memory.atomic.notify
            drop
          end
          i32.const 0
          local.set 6
          local.get 3
          i32.load offset=24
          local.tee 0
          i32.eqz
          br_if 1 (;@2;)
          loop  ;; label = @4
            local.get 0
            i32.load
            local.tee 7
            local.get 0
            local.get 7
            local.get 7
            i32.const -1
            i32.add
            i32.atomic.rmw.cmpxchg
            i32.ne
            br_if 0 (;@4;)
          end
          local.get 7
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=24
          i32.const 1
          memory.atomic.notify
          drop
          br 1 (;@2;)
        end
        local.get 3
        i32.const 0
        i32.const 1
        i32.atomic.rmw.cmpxchg offset=20
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.const 20
        i32.add
        local.set 7
        local.get 3
        i32.const 1
        i32.const 2
        i32.atomic.rmw.cmpxchg offset=20
        drop
        loop  ;; label = @3
          local.get 7
          i32.const 0
          i32.const 2
          i32.const 1
          call $__wait
          local.get 3
          i32.const 0
          i32.const 2
          i32.atomic.rmw.cmpxchg offset=20
          br_if 0 (;@3;)
        end
      end
      local.get 1
      call $__pthread_mutex_lock
      local.tee 7
      local.get 8
      local.get 7
      select
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 3
            i32.load offset=12
            br_if 0 (;@4;)
            local.get 1
            i32.load8_u
            i32.const 8
            i32.and
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 1
              i32.load offset=8
              local.tee 7
              local.get 1
              local.get 7
              local.get 7
              i32.const 1
              i32.add
              i32.atomic.rmw.cmpxchg offset=8
              i32.ne
              br_if 0 (;@5;)
            end
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.load offset=8
              local.tee 7
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 1
                i32.load offset=4
                local.tee 0
                i32.const 1
                i32.lt_s
                br_if 0 (;@6;)
                local.get 1
                local.get 0
                local.get 0
                i32.const -2147483648
                i32.or
                i32.atomic.rmw.cmpxchg offset=4
                drop
                local.get 3
                i32.load offset=8
                local.set 7
              end
              local.get 7
              i32.const 12
              i32.add
              local.set 7
              loop  ;; label = @6
                local.get 7
                i32.load
                local.tee 0
                local.get 7
                local.get 0
                i32.const 0
                i32.atomic.rmw.cmpxchg
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 7
              i32.const 1
              memory.atomic.notify
              drop
              br 1 (;@4;)
            end
            local.get 1
            i32.load8_u
            i32.const 8
            i32.and
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 1
              i32.load offset=8
              local.tee 7
              local.get 1
              local.get 7
              local.get 7
              i32.const -1
              i32.add
              i32.atomic.rmw.cmpxchg offset=8
              i32.ne
              br_if 0 (;@5;)
            end
          end
          i32.const 0
          local.get 4
          local.get 4
          i32.const 11
          i32.eq
          select
          local.set 4
          local.get 3
          i32.load offset=4
          local.set 7
          br 1 (;@2;)
        end
        local.get 3
        i32.load offset=4
        i32.const 0
        call $__pthread_setcancelstate
        drop
        local.get 4
        i32.const 11
        i32.ne
        br_if 1 (;@1;)
        call $__pthread_testcancel
        i32.const 1
        local.set 7
        i32.const 11
        local.set 4
      end
      local.get 7
      i32.const 0
      call $__pthread_setcancelstate
      drop
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $__private_cond_signal (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 32
    i32.add
    local.set 4
    block  ;; label = @1
      local.get 0
      i32.const 0
      i32.const 1
      i32.atomic.rmw.cmpxchg offset=32
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 1
      i32.const 2
      i32.atomic.rmw.cmpxchg
      drop
      loop  ;; label = @2
        local.get 4
        i32.const 0
        i32.const 2
        i32.const 1
        call $__wait
        local.get 4
        i32.const 0
        i32.const 2
        i32.atomic.rmw.cmpxchg
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.load offset=20
    local.tee 5
    i32.const 0
    i32.ne
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 3
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const 0
            i32.const 1
            i32.atomic.rmw.cmpxchg offset=8
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            local.get 2
            i32.const 12
            i32.add
            i32.store offset=16
            local.get 2
            local.get 2
            i32.load offset=12
            i32.const 1
            i32.add
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 3
          local.get 5
          local.get 3
          select
          local.set 3
          local.get 1
          i32.const -1
          i32.add
          local.set 1
        end
        local.get 5
        i32.load
        local.tee 5
        i32.const 0
        i32.ne
        local.set 6
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 5
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.const 4
        i32.add
        local.set 1
        local.get 5
        i32.load offset=4
        local.tee 6
        i32.eqz
        br_if 1 (;@1;)
        local.get 6
        i32.const 0
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      i32.const 4
      i32.add
      local.set 1
    end
    local.get 1
    i32.const 0
    i32.store
    local.get 0
    local.get 5
    i32.store offset=20
    loop  ;; label = @1
      local.get 4
      i32.load
      local.tee 5
      local.get 4
      local.get 5
      i32.const 0
      i32.atomic.rmw.cmpxchg
      i32.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 5
      i32.const 2
      i32.ne
      br_if 0 (;@1;)
      local.get 4
      i32.const 1
      memory.atomic.notify
      drop
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=12
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 2
        i32.const 12
        i32.add
        i32.const 0
        local.get 4
        i32.const 1
        call $__wait
        local.get 2
        i32.load offset=12
        local.tee 4
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 12
      i32.add
      local.set 4
      loop  ;; label = @2
        local.get 4
        i32.load
        local.tee 5
        local.get 4
        local.get 5
        i32.const 0
        i32.atomic.rmw.cmpxchg
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 5
      i32.const 2
      i32.ne
      br_if 0 (;@1;)
      local.get 4
      i32.const 1
      memory.atomic.notify
      drop
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $pthread_cond_wait (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 0
    call $__pthread_cond_timedwait)
  (func $dummy_0 (type 9))
  (func $__tl_unlock (type 9)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=7608
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.get 0
      i32.const -1
      i32.add
      i32.store offset=7608
      return
    end
    loop  ;; label = @1
      i32.const 0
      i32.load offset=6504
      local.tee 0
      i32.const 0
      local.get 0
      i32.const 0
      i32.atomic.rmw.cmpxchg offset=6504
      i32.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      i32.const 0
      i32.load offset=7612
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 1
      memory.atomic.notify offset=6504
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
      i32.load offset=6504
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 6504
      i32.const 7612
      local.get 2
      i32.const 0
      call $__wait
      i32.const 0
      i32.load offset=7612
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 1
      memory.atomic.notify offset=6504
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
        i32.load offset=6504
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        local.get 0
        i32.atomic.rmw.cmpxchg offset=6504
        local.tee 1
        i32.eqz
        br_if 1 (;@1;)
        loop  ;; label = @3
          i32.const 6504
          i32.const 7612
          local.get 1
          i32.const 0
          call $__wait
          i32.const 0
          i32.const 0
          local.get 0
          i32.atomic.rmw.cmpxchg offset=6504
          local.tee 1
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      i32.const 0
      i32.load offset=7608
      i32.const 1
      i32.add
      i32.store offset=7608
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
      i32.load offset=6516
      i32.const -1
      i32.add
      local.tee 1
      i32.store offset=6516
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 0
        i32.const 255
        i32.store8 offset=6513
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
        i32.load offset=7624
        call $free
        i32.const 0
        local.get 2
        i32.load offset=40
        i32.store offset=7624
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
    i32.load8_u offset=6512
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
        i32.load offset=7600
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
        i32.load offset=5864
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
        i32.load offset=5728
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
      i32.store8 offset=6512
      local.get 6
      i32.const 7620
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
      local.get 4
      i32.const 0
      i32.load offset=5868
      local.tee 11
      i32.store offset=44
      local.get 4
      i32.const 0
      i32.load offset=7604
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
                      i32.load offset=7616
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
                  i32.load offset=7616
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
                i32.load offset=7616
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
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.load offset=20
                  local.tee 1
                  i32.const 0
                  i32.load offset=6504
                  i32.eq
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    i32.const 0
                    i32.const 0
                    local.get 1
                    i32.atomic.rmw.cmpxchg offset=6504
                    local.tee 9
                    i32.eqz
                    br_if 0 (;@8;)
                    loop  ;; label = @9
                      i32.const 6504
                      i32.const 7612
                      local.get 9
                      i32.const 0
                      call $__wait
                      i32.const 0
                      i32.const 0
                      local.get 1
                      i32.atomic.rmw.cmpxchg offset=6504
                      local.tee 9
                      br_if 0 (;@9;)
                    end
                  end
                  i32.const 0
                  i32.load offset=7608
                  local.set 9
                  br 1 (;@6;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=7608
                i32.const 1
                i32.add
                local.tee 9
                i32.store offset=7608
              end
              i32.const 0
              i32.load offset=7624
              call $free
              i32.const 0
              i32.const 0
              i32.store offset=7624
              block  ;; label = @6
                block  ;; label = @7
                  local.get 9
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 9
                  i32.const -1
                  i32.add
                  i32.store offset=7608
                  br 1 (;@6;)
                end
                loop  ;; label = @7
                  i32.const 0
                  i32.load offset=6504
                  local.tee 9
                  i32.const 0
                  local.get 9
                  i32.const 0
                  i32.atomic.rmw.cmpxchg offset=6504
                  i32.ne
                  br_if 0 (;@7;)
                end
                i32.const 0
                i32.load offset=7612
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                i32.const 1
                memory.atomic.notify offset=6504
                drop
              end
              local.get 11
              call $malloc
              local.tee 5
              i32.eqz
              br_if 1 (;@4;)
              i32.const 0
              local.get 7
              i32.sub
              local.set 1
              local.get 5
              local.get 11
              i32.add
              i32.const 0
              i32.load offset=7616
              i32.sub
              local.set 9
              block  ;; label = @6
                local.get 8
                i32.eqz
                br_if 0 (;@6;)
                local.get 8
                local.set 14
                br 1 (;@5;)
              end
              local.get 5
              local.get 12
              i32.add
              local.set 13
              local.get 9
              local.get 1
              i32.add
              local.set 14
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
            i32.const 6520
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
            i32.load offset=6504
            i32.eq
            br_if 1 (;@3;)
            i32.const 0
            i32.const 0
            local.get 11
            i32.atomic.rmw.cmpxchg offset=6504
            local.tee 9
            i32.eqz
            br_if 2 (;@2;)
            loop  ;; label = @5
              i32.const 6504
              i32.const 7612
              local.get 9
              i32.const 0
              call $__wait
              i32.const 0
              i32.const 0
              local.get 11
              i32.atomic.rmw.cmpxchg offset=6504
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
        i32.load offset=7608
        i32.const 1
        i32.add
        i32.store offset=7608
      end
      i32.const 0
      i32.const 0
      i32.load offset=6516
      local.tee 9
      i32.const 1
      i32.add
      i32.store offset=6516
      block  ;; label = @2
        local.get 9
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=6513
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          call $__wasi_thread_spawn
          local.tee 11
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
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
        i32.load offset=6516
        i32.const -1
        i32.add
        local.tee 9
        i32.store offset=6516
        i32.const -6
        local.set 11
        local.get 9
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store8 offset=6513
      end
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=7608
          local.tee 9
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.get 9
          i32.const -1
          i32.add
          i32.store offset=7608
          br 1 (;@2;)
        end
        loop  ;; label = @3
          i32.const 0
          i32.load offset=6504
          local.tee 9
          i32.const 0
          local.get 9
          i32.const 0
          i32.atomic.rmw.cmpxchg offset=6504
          i32.ne
          br_if 0 (;@3;)
        end
        i32.const 0
        i32.load offset=7612
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        memory.atomic.notify offset=6504
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
              i32.const 5596
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
          i32.const 5596
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
    i32.const 6504
    i32.const 0
    i32.atomic.store
    i32.const 6504
    i32.const 1
    memory.atomic.notify
    drop)
  (func $__multi3 (type 24) (param i32 i64 i64 i64 i64)
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
  (table (;0;) 7 7 funcref)
  (global $__stack_pointer (mut i32) (i32.const 73168))
  (global $__tls_base (mut i32) (i32.const 0))
  (global $__tls_size i32 (i32.const 112))
  (global $__tls_align i32 (i32.const 4))
  (global $GOT.data.internal.__memory_base i32 (i32.const 0))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (export "wasi_thread_start" (func $wasi_thread_start))
  (start $__wasm_init_memory)
  (elem (;0;) (i32.const 1) func $worker_fn $join_target_fn $__stdio_close $__stdio_write $__stdio_seek $__stdout_write)
  (data $.tdata "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data $.rodata "print_every\00checkpoint_every\00stress_every\00ny\00nx\00mutex\00-+   0X0x\00-0X+0X 0X-0x+0x 0x\00pthread_cond_broadcast\00pthread_mutex_init\00pthread_cond_init\00stress:barrier_wait\00stress:join_wait\00pthread_cond_wait\00stress:cond_wait\00stress_iters\00steps\00nthreads\00barrier\00after_swap\00unknown\00pthread_join\00nan\00pthread_mutex_unlock\00pthread_mutex_lock\00inf\00 [%d,%d]=%.6f\00pthread_create\00none\00grid size too large\00cond\00malloc failed\00calloc failed\00stress:mutex_blocked\00NAN\00INF\00samples:\00nx and ny must be >= 3\00steps must be >= 1\00barrier trip must be > 0\00nthreads must be >= 0\00.\00pthread_join(join_target)\00pthread_create(join_target)\00pthread_mutex_unlock(stress)\00pthread_mutex_lock(stress)\00pthread_mutex_unlock(stress,waiter)\00pthread_mutex_lock(stress,waiter)\00pthread_mutex_unlock(cond,waiter)\00pthread_mutex_lock(cond,waiter)\00(null)\00pthread_mutex_unlock(cond,signal)\00pthread_mutex_lock(cond,signal)\00pthread_mutex_unlock(cond)\00pthread_mutex_lock(cond)\00pthread_mutex_unlock(cond,tid0)\00pthread_mutex_lock(cond,tid0)\00FATAL: %s: %s\0a\00FATAL: %s\0a\00time_sec=%.6f\0a\00checksum=%.12f\0a\00heat_bench: nx=%d ny=%d steps=%d nthreads=%d (effective=%d) stress=%s checkpoint_every=%d stress_every=%d print_every=%d stress_iters=%lld\0a\00Usage: %s nx ny steps nthreads [stress] [checkpoint_every] [stress_every] [print_every] [stress_iters]\0a  nthreads: 0 => single-thread (no pthread_create), >=1 => pthread workers\0a  stress: none|barrier|mutex|cond|join (default: none)\0a  checkpoint_every: call checkpoint_hook every N steps (0 disables, default 0)\0a  stress_every: apply stress every N steps (default 1)\0a  print_every: print sample cells every N steps (0 disables, default 0)\0a  stress_iters: busy-spin iterations while threads are blocked (default 0)\0aExamples:\0a  %s 1000 1000 200 0\0a  %s 1000 1000 200 8 mutex 1 1 0 2000000\0a\00Support for formatting long double values is currently disabled.\0aTo enable it, add -lc-printscan-long-double to the link command.\0a\00Unknown stress mode '%s' (use: none|barrier|mutex|cond|join)\0a\00Invalid %s: '%s'\0a\00\00\01\00\00\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00\00\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05\00\00\e0\15\00\00h\16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\00\0a\00\19\19\19\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\19\00\11\0a\19\19\19\03\0a\07\00\01\1b\09\0b\18\00\00\09\06\0b\00\00\0b\00\06\19\00\00\00\19\19\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\00\00\00\00\00\19\00\0a\0d\19\19\19\00\0d\00\00\02\00\09\0e\00\00\00\09\00\0e\00\00\0e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\13\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\0f\00\00\00\04\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\11\00\00\00\00\09\12\00\00\00\00\00\12\00\00\12\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1a\00\00\00\1a\1a\1a\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\17\00\00\00\00\09\14\00\00\00\00\00\14\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\15\00\00\00\00\09\16\00\00\00\00\00\16\00\00\16\00\000123456789ABCDEF\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\01\02\03\04\05\06\07\08\09\ff\ff\ff\ff\ff\ff\ff\0a\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\22#\ff\ff\ff\ff\ff\ff\0a\0b\0c\0d\0e\0f\10\11\12\13\14\15\16\17\18\19\1a\1b\1c\1d\1e\1f !\22#\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\ff\00\01\02\04\07\03\06\05\00\00\00\00\00\00\00")
  (data $.data "\05\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\05\00\00\00\98\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\e0\15\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\05\00\00\00\a8\19\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\ff\ff\ff\ff\0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00h\16\00\00\00\00\02\00"))
