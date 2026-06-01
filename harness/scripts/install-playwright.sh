#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."
if [ ! -f package.json ]; then npm init -y; fi
npm install -D @playwright/test
npx playwright install
echo "Playwright installed in harness folder."
