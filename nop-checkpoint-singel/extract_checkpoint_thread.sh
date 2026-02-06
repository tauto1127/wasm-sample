#!/usr/bin/env bash
set -euo pipefail

# --- 設定（デフォルト値） ---
COUNT="${1:-1}"  # 第1引数で実行回数を指定（省略時1回）

CMD=( "$HOME/wamr-2.1.0-with-wasi-threads/product-mini/platforms/linux/build/iwasm" "--max-threads=32" "wasm2.wasm" )

# --- 入力チェック ---
if ! [[ "$COUNT" =~ ^[0-9]+$ ]] || [ "$COUNT" -lt 1 ]; then
  echo "Usage: $0 <count:int>=1" >&2
  exit 1
fi

# --- 実行と抽出 ---
for i in $(seq 1 "$COUNT"); do
  echo "===== Run $i / $COUNT ====="

  "${CMD[@]}" \
    | awk '
        /^main-memory, /         { print; found=1 }
        /^main-global, /         { print; found=1 }
        /^main-program counter, /{ print; found=1 }
        /^main-stack, /          { print; found=1 }
        END { if (!found) print "WARN: target lines not found in this run" > "/dev/stderr" }
      '

  echo
done
