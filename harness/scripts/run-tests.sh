#!/bin/bash
set -euo pipefail
PROJECT_PATH="${PROJECT_PATH:-$(pwd)}"
cd "$PROJECT_PATH"
vendor/bin/phpunit --no-coverage --testdox
