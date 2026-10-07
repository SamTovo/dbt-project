#!/usr/bin/env bash
# Cria um novo ADR em decisions/ a partir do template.
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Uso: $0 \"Título da decisão\"" >&2
  exit 1
fi

title="$*"
dir="$(cd "$(dirname "$0")/.." && pwd)/decisions"

last=$(ls "$dir" | grep -oE '^[0-9]{4}' | sort -n | tail -1 || true)
num=$(printf '%04d' $((10#${last:-0} + 1)))

slug=$(printf '%s' "$title" \
  | LC_ALL=C.UTF-8 iconv -f UTF-8 -t ASCII//TRANSLIT \
  | tr '[:upper:]' '[:lower:]' \
  | sed -E 's/[^a-z0-9]+/-/g; s/^-+|-+$//g')

file="$dir/$num-$slug.md"
rel="decisions/$num-$slug.md"
sed -e "s/^# NNNN\. Título da decisão/# $num. $title/" \
    -e "s/AAAA-MM-DD/$(date +%F)/" \
    "$dir/template.md" > "$file"

echo "Criado: $rel"
echo "Lembre-se de adicionar a decisão ao índice em decisions/README.md."
