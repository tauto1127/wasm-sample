#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  alt_cp_restore.sh <K> -- <command_without_--restore> [args...]

Example:
  ./alt_cp_restore.sh 10 -- /home/you/.../iwasm --max-threads=32 heat-nop.wasm 1000 1000 50 2 mutex
  ./alt_cp_restore.sh 10 -- ~/.../iwasm --max-threads=32 heat-nop.wasm 1000 1000 50 2 mutex

Output (TSV):
  cycle <tab> checkpoint_ns <tab> restore_done
EOF
}

if [[ $# -lt 3 ]]; then usage; exit 2; fi
K="$1"; shift
if [[ "${1:-}" != "--" ]]; then echo "Error: missing '--'." >&2; usage; exit 2; fi
shift

if ! [[ "$K" =~ ^[0-9]+$ ]] || [[ "$K" -le 0 ]]; then
  echo "Error: K must be a positive integer." >&2
  exit 2
fi

if ! command -v script >/dev/null 2>&1; then
  echo "Error: 'script' not found. Install util-linux (Linux) or BSD script." >&2
  exit 2
fi

BASE=( "$@" )
if [[ ${#BASE[@]} -lt 1 ]]; then echo "Error: empty command." >&2; exit 2; fi

# 先頭要素だけ ~ を $HOME に展開
expand_tilde_cmd0() {
  local x="$1"
  if [[ "$x" == "~" ]]; then
    printf '%s' "$HOME"
  elif [[ "$x" == "~/"* ]]; then
    printf '%s' "$HOME/${x#~/}"
  else
    printf '%s' "$x"
  fi
}

strip_restore_flag() {
  local -a out=()
  for a in "$@"; do
    [[ "$a" == "--restore" ]] && continue
    out+=( "$a" )
  done
  printf '%s\0' "${out[@]}"
}

# 配列→シェルコマンド文字列（安全にクォート）
to_cmd_string() {
  local s=""
  local a
  for a in "$@"; do
    s+=$(printf '%q ' "$a")
  done
  printf '%s' "${s% }"
}

run_and_extract_then_kill() {
  local mode="$1"; shift
  local -a CMD=( "$@" )

  local value=""
  local fifo
  fifo="$(mktemp -u)"
  mkfifo "$fifo"

  # script で PTY 実行（setsidでPG作成）
  local cmd_str
  cmd_str="$(to_cmd_string "${CMD[@]}")"

  setsid script -q -f -c "$cmd_str" /dev/null >"$fifo" 2>&1 &
  local pid=$!

  local -a tailbuf=()
  local max_tail=80

  while IFS= read -r line; do
    tailbuf+=( "$line" )
    if (( ${#tailbuf[@]} > max_tail )); then
      tailbuf=( "${tailbuf[@]:1}" )
    fi

    if [[ "$mode" == "checkpoint" ]]; then
      if [[ "$line" =~ ^[[:space:]]*checkpoint[[:space:]]time\(nopから\):[[:space:]]*([0-9]+)[[:space:]]*ns ]]; then
        value="${BASH_REMATCH[1]}"
      fi
    else
      if [[ "$line" =~ ^[[:space:]]*restore[[:space:]]done:([0-9]+) ]]; then
        value="${BASH_REMATCH[1]}"
      fi
    fi

    if [[ -n "$value" ]]; then
      kill -TERM "-$pid" 2>/dev/null || true
      sleep 0.2
      kill -KILL "-$pid" 2>/dev/null || true
      break
    fi
  done <"$fifo"

  rm -f "$fifo"
  wait "$pid" 2>/dev/null || true

  if [[ -z "$value" ]]; then
    local logf
    logf="$(mktemp "/tmp/alt_cp_restore.${mode}.XXXXXX.log")"
    printf '%s\n' "${tailbuf[@]}" >"$logf"
    echo "DEBUG: last ${max_tail} lines saved to: $logf" >&2
  fi

  echo "$value"
}

printf 'cycle\tcheckpoint_ns\trestore_done\n'

IFS=$'\0' read -r -d '' -a CP_CMD < <(strip_restore_flag "${BASE[@]}")

# 先頭(実行ファイル)の ~ を展開して差し替え
CP_CMD[0]="$(expand_tilde_cmd0 "${CP_CMD[0]}")"

EXE="${CP_CMD[0]}"
REST_ARGS=( "${CP_CMD[@]:1}" )
RS_CMD=( "$EXE" --restore "${REST_ARGS[@]}" )

for ((c=1; c<=K; c++)); do
  cp_ns="$(run_and_extract_then_kill checkpoint "${CP_CMD[@]}")"
  if [[ -z "$cp_ns" ]]; then
    echo "Error: could not find checkpoint time on cycle ${c}." >&2
    exit 1
  fi

  rs_done="$(run_and_extract_then_kill restore "${RS_CMD[@]}")"
  if [[ -z "$rs_done" ]]; then
    echo "Error: could not find restore done on cycle ${c}." >&2
    exit 1
  fi

  printf '%s\t%s\t%s\n' "$c" "$cp_ns" "$rs_done"
done
