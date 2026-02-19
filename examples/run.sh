#!/usr/bin/env bash
set -euo pipefail

mkdir -p "$(dirname "${2:-./out/output.json}")" 2>/dev/null || true
echo "Use scripts/run_local.sh to execute your tool locally."
