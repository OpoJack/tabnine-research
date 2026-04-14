#!/usr/bin/env bash
set -euo pipefail

if [[ "${TABNINE_CLI:-}" != "1" ]]; then
  exit 0
fi

if [[ -f ".gitlab-ci.yml" ]]; then
  printf '[tabnine hook] gitlab-context: inspect rules, includes, caches, and artifacts before editing pipeline YAML\n' >&2
fi
