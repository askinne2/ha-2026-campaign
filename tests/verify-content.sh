#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

require_in_file() {
  local file="$1"
  local needle="$2"
  if ! grep -qF "$needle" "$file"; then
    echo "FAIL: expected '$needle' in $file"
    exit 1
  fi
}

for f in index.html campaign-strategy.html campaign-calendar.html; do
  test -f "$f" || { echo "FAIL: missing $f"; exit 1; }
done

require_in_file index.html 'Critical Dates'
require_in_file index.html 'Sept 15'
require_in_file index.html 'assets/images/sda-10-year-white.svg'
require_in_file campaign-calendar.html 'Production &amp; quiet cultivation'
require_in_file campaign-calendar.html 'Homes for the Holidays'
require_in_file campaign-strategy.html 'cultivation'
require_in_file campaign-strategy.html 'Phase 1'
require_in_file campaign-strategy.html 'Five phases'
if grep -qF 'Before & after' campaign-strategy.html; then
  echo "FAIL: before/after section should be removed"
  exit 1
fi

echo "PASS: content verification"
