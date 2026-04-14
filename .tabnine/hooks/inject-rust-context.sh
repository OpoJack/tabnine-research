#!/usr/bin/env bash
set -euo pipefail

if [[ "${TABNINE_CLI:-}" != "1" ]]; then
  exit 0
fi

if [[ -f "Cargo.toml" ]]; then
  printf '[tabnine hook] rust-context: Cargo.toml present; review crate boundaries, error handling, and tests\n' >&2
fi
