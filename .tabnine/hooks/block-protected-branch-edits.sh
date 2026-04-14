#!/usr/bin/env bash
set -euo pipefail

if [[ "${TABNINE_CLI:-}" != "1" ]]; then
  exit 0
fi

branch="$(git branch --show-current 2>/dev/null || true)"
tool_name="${TABNINE_TOOL_NAME:-}"

case "${branch}" in
  main|master|release/*)
    case "${tool_name}" in
      write_file|replace|run_shell_command)
        printf '[tabnine hook] protected-branch warning: branch=%s tool=%s\n' "${branch}" "${tool_name}" >&2
        ;;
    esac
    ;;
esac
