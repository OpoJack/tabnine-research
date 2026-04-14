#!/usr/bin/env bash
set -euo pipefail

if [[ "${TABNINE_CLI:-}" != "1" ]]; then
  exit 0
fi

printf '[tabnine hook] error model=%s tool=%s\n' "${TABNINE_MODEL:-unknown}" "${TABNINE_TOOL_NAME:-unknown}" >&2
