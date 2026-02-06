#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  extract_checkpoint_time.sh <N> -- <command> [args...]

Examples:
  ./extract_checkpoint_time.sh 5 -- ./iwasm --max-threads=32 heat-nop.wasm 1000 1000 50 2 mutex
  ./extract_checkpoint_time.sh 10 -- bash -lc './iwasm ...'

Output:
  Prints the extracted number (ns) per run, one per line.
EOF
}

if [[ $# -lt 3 ]]; then
  usage
  exit 2
fi

N="$1"
shift

if [[ "$1" != "--" ]]; then
  echo "Error: missing '--' separator." >&2
  usage
  exit 2
fi
shift

if ! [[ "$N" =~ ^[0-9]+$ ]] || [[ "$N" -le 0 ]]; then
  echo "Error: N must be a positive integer." >&2
  exit 2
fi

# 実行コマンド（残り引数すべて）
CMD=( "$@" )

for ((i=1; i<=N; i++)); do
  # コマンドを実行し、"checkpoint time(nopから): <digits> ns" を探す
  # - 最初に見つかった値（1回分に複数出るケースは想定外だが、最初を採用）
  # - 見つからなければ空行ではなくエラーにする
  out="$(
    "${CMD[@]}" 2>&1 \
      | sed -nE 's/^checkpoint time\(nopから\):[[:space:]]*([0-9]+)[[:space:]]*ns.*/\1/p' \
      | head -n 1
  )"

  if [[ -z "${out}" ]]; then
    echo "Error: could not find 'checkpoint time(nopから):' on run ${i}." >&2
    exit 1
  fi

  echo "${out}"
done

