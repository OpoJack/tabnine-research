#!/usr/bin/env bash
set -euo pipefail

if [[ "${TABNINE_CLI:-}" != "1" ]]; then
  exit 0
fi

tool_name="${TABNINE_TOOL_NAME:-}"
tool_input="${TABNINE_TOOL_INPUT:-}"

if [[ "${tool_name}" != "run_shell_command" ]]; then
  exit 0
fi

case "${tool_input}" in
  *" rm "*|rm\ *|*"git reset --hard"*|*"git clean -fd"*|*"git checkout -- "*|*"git push --force"*)
    printf '[tabnine hook] destructive-shell warning: review command carefully: %s\n' "${tool_input}" >&2
    ;;
esac
