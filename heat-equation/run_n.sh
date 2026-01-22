#!/usr/bin/env bash
set -euo pipefail

# 使い方:
#   ./run_n.sh 30 -- ~/path/to/iwasm --max-threads=32 wasm.wasm 1000 1000 50 4 mutex
# 例:
#   ./run_n.sh 30 -- ~/wamr-2.1.0-with-wasi-threads/product-mini/platforms/linux/build/iwasm --max-threads=32 wasm.wasm 1000 1000 50 4 mutex

if [[ $# -lt 3 ]]; then
  echo "Usage: $0 <n> -- <command...>" >&2
  exit 1
fi

N="$1"
shift
[[ "${1:-}" == "--" ]] || { echo "Missing '--' separator" >&2; exit 1; }
shift

CMD=( "$@" )

ts="$(date +%Y%m%d_%H%M%S)"
out_dir="bench_${ts}"
mkdir -p "$out_dir"
raw_log="${out_dir}/raw.log"
times_tsv="${out_dir}/times.tsv"

echo -e "iter\ttime_sec" > "$times_tsv"
echo "# command: ${CMD[*]}" | tee "$raw_log"

for i in $(seq 1 "$N"); do
  echo "=== run ${i}/${N} ===" | tee -a "$raw_log"
  # コマンド実行（stdout/stderr 両方をログへ）
  out="$("${CMD[@]}" 2>&1 | tee -a "$raw_log")"

  # time_sec=... を抽出（最後に出たものを採用）
  t="$(printf "%s\n" "$out" | awk -F= '/^time_sec=/{v=$2} END{if(v==""){exit 2} print v}')"

  echo -e "${i}\t${t}" >> "$times_tsv"
  echo "time_sec=${t}"
done

# 集計（平均/標準偏差/min/max）
awk '
  NR==1 {next}
  {x=$2; n++; sum+=x; sumsq+=x*x; if(n==1||x<min)min=x; if(n==1||x>max)max=x}
  END{
    mean=sum/n
    var=(sumsq - sum*sum/n)/(n>1 ? (n-1) : 1)
    sd=(var>0)?sqrt(var):0
    printf("\n# n=%d\n# mean=%.6f\n# sd=%.6f\n# min=%.6f\n# max=%.6f\n", n, mean, sd, min, max)
  }
' "$times_tsv" | tee "${out_dir}/summary.txt"

echo
echo "Saved:"
echo "  ${raw_log}"
echo "  ${times_tsv}"
echo "  ${out_dir}/summary.txt"

