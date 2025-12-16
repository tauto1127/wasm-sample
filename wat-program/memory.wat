;; memory.wat
(module
    ;; 64kbのメモリを1ページ確保し，export
    (memory (export "mem") 1)

    ;; アドレス0に1234を書き込む
    (func $write_1234 (export "write_1234")
      ;; スタック：[addr, value]の順で詰んでからstoreする
        i32.const 0
        i32.const 1234
        ;; i32.store [align=4, offset=0]
        i32.store align=4
    )
    
    ;; アドレス0からi32を読み込み，返す
    (func $read_i32 (export "read_i32") (result i32)
        i32.const 0
        ;; i32.load [align=4, offset=0]
        i32.load align=4
    )
    
    ;;main
    (func (export "main") (result i32)
        call $write_1234
        call $read_i32
    )
)