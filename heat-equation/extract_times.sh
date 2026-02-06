#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  extract_times.sh <N> -- <command> [args...]

Example:
  ./extract_times.sh 5 -- ~/.../iwasm --max-threads=32 --restore heat-nop.wasm 1000 1000 50 2 mutex

Output (TSV):
  run <tab> checkpoint_ns <tab> restore_done
EOF
}

if [[ $# -lt 3 ]]; then usage; exit 2; fi
N="$1"; shift
if [[ "${1:-}" != "--" ]]; then
  echo "Error: missing '--' separator." >&2
  usage; exit 2
fi
shift

if ! [[ "$N" =~ ^[0-9]+$ ]] || [[ "$N" -le 0 ]]; then
  echo "Error: N must be a positive integer." >&2
  exit 2
fi

CMD=( "$@" )

run_once() {
  local checkpoint_ns=""
  local restore_done=""
  local killed=0

  # 行バッファリング（パイプでも逐次読めるように）
  # macOS なら stdbuf が無いことがあるので、その場合は外しても動きます（ただし検知が遅れる可能性）
  if command -v stdbuf >/dev/null 2>&1; then
    coproc PROC { stdbuf -oL -eL "${CMD[@]}" 2>&1; }
  else
    coproc PROC { "${CMD[@]}" 2>&1; }
  fi
  local pid="$PROC_PID"

  # 出力を逐次監視
  while IFS= read -r line <&"${PROC[0]}"; do
    # checkpoint time(nopから)
    if [[ -z "$checkpoint_ns" && "$line" =~ ^checkpoint[[:space:]]time\(nopから\):[[:space:]]*([0-9]+)[[:space:]]*ns ]]; then
      checkpoint_ns="${BASH_REMATCH[1]}"
    fi

    # restore done
    if [[ -z "$restore_done" && "$line" =~ ^restore[[:space:]]done:([0-9]+) ]]; then
      restore_done="${BASH_REMATCH[1]}"

      # ここで即終了させる
      if kill -0 "$pid" 2>/dev/null; then
        kill -TERM "$pid" 2>/dev/null || true
        killed=1
      fi
      break
    fi
  done

  # 終了待ち（restore検知で止めた場合は念のため強制終了も入れる）
  if kill -0 "$pid" 2>/dev/null; then
    wait "$pid" 2>/dev/null || true
  else
    wait "$pid" 2>/dev/null || true
  fi

  if [[ "$killed" -eq 1 ]]; then
    # TERMで落ちない場合に備えてKILL
    if kill -0 "$pid" 2>/dev/null; then
      kill -KILL "$pid" 2>/dev/null || true
      wait "$pid" 2>/dev/null || true
    fi
  fi

  # 3列TSVで返す（空なら空）
  printf '%s\t%s\t%s\n' "$checkpoint_ns" "$restore_done" ""
}

# ヘッダ
printf 'run\tcheckpoint_ns\trestore_done\n'

for ((i=1; i<=N; i++)); do
  # run_once は「checkpoint_ns \t restore_done \t ''」を返すので、整形して出力
  line="$(run_once)"
  # run番号を先頭に付けて2列目以降を使う
  # shellcheck disable=SC2001
  printf '%s\t%s\n' "$i" "$(echo "$line" | awk -F'\t' '{print $1 "\t" $2}')"
done

