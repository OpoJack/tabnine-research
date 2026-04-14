---
name: angular-workspace-maintainer
description: >
  Use this skill for Angular workspace structure, components, services, RxJS flows,
  routing, standalone APIs, build configuration, and test maintenance. Prefer it
  when the task mentions Angular, TypeScript, templates, RxJS, `angular.json`,
  Nx-style workspace concerns, or CLI-generated code.
---

# Angular Workspace Maintainer

Use this skill for Angular codebase work with an emphasis on maintainability.

## Goals

- Keep changes aligned with the existing Angular version and workspace conventions.
- Prefer clear data flow and predictable component boundaries.
- Avoid unnecessary abstractions in templates and services.

## Workflow

1. Inspect:
   - `package.json`
   - `angular.json`
   - target module or standalone component files
   - related templates, styles, and tests
2. Classify the task:
   - UI structure
   - forms
   - routing
   - state and RxJS behavior
   - build/test configuration
3. Prefer:
   - standalone components if the workspace is already using them
   - strongly typed inputs, outputs, and service responses
   - readable RxJS pipelines over clever ones
   - explicit change-detection reasoning when performance is the issue

## Rules

- Match the project’s current Angular patterns instead of mixing paradigms.
- Keep template logic shallow.
- If the change affects build behavior, mention `angular.json`, tsconfig, and environment handling explicitly.
- Add or update tests when component behavior changes.

## Output style

- Name the Angular surface being changed.
- Show the smallest viable edit.
- Mention any workspace-level side effects.
