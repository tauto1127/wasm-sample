#!/usr/bin/env bash
set -euo pipefail

CMD=(/home/takuto1127/wamr-2.1.0-with-wasi-threads-vanilla/product-mini/platforms/linux/build/iwasm --max-threads=32 heat0201.wasm 1000 1000 50 4 none)

times=()

for i in $(seq 1 10); do
  out="$("${CMD[@]}")"
  t="$(printf '%s\n' "$out" | awk -F= '/^time_sec=/{print $2; exit}')"

  if [[ -z "${t:-}" ]]; then
    echo "ERROR: time_sec not found in run $i" >&2
    exit 1
  fi

  times+=("$t")
done

printf "%s\n" "${times[@]}"

