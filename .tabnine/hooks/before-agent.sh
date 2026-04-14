#!/usr/bin/env bash
set -euo pipefail

# Lightweight context hint for debugging hook execution.
if [[ "${TABNINE_CLI:-}" != "1" ]]; then
  exit 0
fi

printf '[tabnine hook] before-agent cwd=%s model=%s\n' "${PWD}" "${TABNINE_MODEL:-unknown}" >&2
