---
name: rust-test-author
description: >
  Use this skill for writing or repairing Rust tests, identifying missing edge
  cases, strengthening failure-path coverage, and adding minimal regression tests.
  Prefer it when the main task is test design or test repair rather than broad implementation.
---

# Rust Test Author

Use this skill when the task is mainly about tests for Rust behavior.

## Goals

- Add the smallest useful tests that lock behavior down.
- Cover both happy paths and failure modes where behavior matters.
- Keep test setup readable and local.

## Workflow

1. Read the target Rust module and nearby tests.
2. Identify the behavior that needs proof:
   - normal return values
   - edge cases
   - invalid input
   - error propagation
   - state transitions
3. Decide whether the test belongs in:
   - the same module
   - a unit test module nearby
   - an integration test

## Rules

- Prefer focused tests over large fixtures.
- Add regression tests for bugs before suggesting broader cleanup.
- Use descriptive test names that encode behavior.
- If a behavior change requires code updates, specify the test expectation first.

## Output style

- Start with the missing behavior or regression gap.
- Then show the smallest test addition.
- Mention any code change needed only if the current implementation cannot satisfy the intended behavior.
