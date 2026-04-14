# MCP Memory Plan

This document captures what persistent preferences might be worth storing across Tabnine CLI sessions.

## Candidate Preferences

- prefer Alpine-oriented Docker guidance
- prefer modern Angular with Signals for local state
- favor explicit GitLab `rules`
- favor minimal diffs over broad refactors unless asked otherwise
- favor Rust correctness and tests before style cleanup

## Candidate Reusable Memory

- recurring review checklists
- preferred output shapes for code review findings
- common repo locations or sibling projects
- migration goals such as reducing RxJS-heavy local state

## Guardrails

- Store only stable preferences that will remain useful.
- Avoid encoding temporary project details as durable memory.
- Keep memory short and high signal.
