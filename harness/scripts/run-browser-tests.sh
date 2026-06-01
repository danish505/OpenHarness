#!/bin/bash
set -euo pipefail
HARNESS_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$HARNESS_DIR"
VALET_URL="${VALET_URL:-https://example-laravel-app.test}" npx playwright test
