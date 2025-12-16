;; simple.wat
(module
    ;; i32を1つ返す関数"answer"をexport
    (func (export "answer") (result i32)
        i32.const 42
    )
)