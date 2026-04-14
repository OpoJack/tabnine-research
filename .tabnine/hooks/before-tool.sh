#!/usr/bin/env bash
set -euo pipefail

if [[ "${TABNINE_CLI:-}" != "1" ]]; then
  exit 0
fi

tool_name="${TABNINE_TOOL_NAME:-unknown}"

# Keep this hook non-blocking and fast; it only surfaces extra visibility.
case "${tool_name}" in
  run_shell_command|write_file|replace)
    printf '[tabnine hook] about to use tool=%s\n' "${tool_name}" >&2
    ;;
esac
