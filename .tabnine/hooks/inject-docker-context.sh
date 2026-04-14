#!/usr/bin/env bash
set -euo pipefail

if [[ "${TABNINE_CLI:-}" != "1" ]]; then
  exit 0
fi

if [[ -f "Dockerfile" || -f "docker-compose.yml" || -f "compose.yml" ]]; then
  printf '[tabnine hook] docker-context: Alpine is the default image assumption in this repo\n' >&2
fi
