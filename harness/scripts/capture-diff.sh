#!/bin/bash
set -euo pipefail
PROJECT_PATH="${PROJECT_PATH:-$(pwd)}"
HARNESS_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$PROJECT_PATH"
git diff > "$HARNESS_DIR/artifacts/latest-diff.patch"
echo "Diff captured at $HARNESS_DIR/artifacts/latest-diff.patch"
