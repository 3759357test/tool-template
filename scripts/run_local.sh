#!/usr/bin/env bash
set -euo pipefail

INPUT=""
OUTPUT=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --input) INPUT="$2"; shift 2 ;;
    --output) OUTPUT="$2"; shift 2 ;;
    *) shift ;;
  esac
done

IN_PATH="${INPUT:-./examples/input.json}"
OUT_PATH="${OUTPUT:-./out/output.json}"
mkdir -p "$(dirname "$OUT_PATH")"

# TODO: replace this placeholder command with your real tool entrypoint.
cp "$IN_PATH" "$OUT_PATH"
echo "wrote: $OUT_PATH"
