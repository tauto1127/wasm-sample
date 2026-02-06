#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  extract_restore.sh <N> -- <command> [args...]

Example:
  ./extract_restore.sh 5 -- ~/.../iwasm --max-threads=32 --restore heat-nop.wasm 1000 1000 50 2 mutex

Output:
  Prints "restore done" value per run, one per line.
EOF
}

if [[ $# -lt 3 ]]; then usage; exit 2; fi
N="$1"; shift

if [[ "${1:-}" != "--" ]]; then
  echo "Error: missing '--' separator." >&2
  usage
  exit 2
fi
shift

if ! [[ "$N" =~ ^[0-9]+$ ]] || [[ "$N" -le 0 ]]; then
  echo "Error: N must be a positive integer." >&2
  exit 2
fi

CMD=( "$@" )

run_once() {
  local restore_done=""
  local killed=0

  if command -v stdbuf >/dev/null 2>&1; then
    coproc PROC { stdbuf -oL -eL "${CMD[@]}" 2>&1; }
  else
    coproc PROC { "${CMD[@]}" 2>&1; }
  fi
  local pid="$PROC_PID"

  while IFS= read -r line <&"${PROC[0]}"; do
    if [[ "$line" =~ ^restore[[:space:]]done:([0-9]+) ]]; then
      restore_done="${BASH_REMATCH[1]}"

      # restore done を見つけたら即終了
      if kill -0 "$pid" 2>/dev/null; then
        kill -TERM "$pid" 2>/dev/null || true
        killed=1
      fi
      break
    fi
  done

  wait "$pid" 2>/dev/null || true

  if [[ "$killed" -eq 1 ]] && kill -0 "$pid" 2>/dev/null; then
    kill -KILL "$pid" 2>/dev/null || true
    wait "$pid" 2>/dev/null || true
  fi

  if [[ -z "$restore_done" ]]; then
    echo "Error: could not find 'restore done:'" >&2
    return 1
  fi

  echo "$restore_done"
}

for ((i=1; i<=N; i++)); do
  run_once
done

