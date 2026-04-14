#!/usr/bin/env bash
set -euo pipefail

if [[ "${TABNINE_CLI:-}" != "1" ]]; then
  exit 0
fi

if [[ -f "angular.json" ]]; then
  printf '[tabnine hook] angular-context: modern Angular workspace detected; prefer Signals-first local state\n' >&2
fi
