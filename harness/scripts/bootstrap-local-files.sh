#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."
[ -f harness.config.json ] || cp harness.config.example.json harness.config.json
[ -f state/context.json ] || cp state/context.example.json state/context.json
[ -f plans/plan.md ] || cp plans/plan.example.md plans/plan.md
[ -f reports/implementation.md ] || cp reports/implementation.example.md reports/implementation.md
[ -f reports/test-results.md ] || cp reports/test-results.example.md reports/test-results.md
[ -f reports/review.md ] || cp reports/review.example.md reports/review.md
echo "Local harness files are ready."
