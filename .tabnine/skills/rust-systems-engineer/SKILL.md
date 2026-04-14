---
name: rust-systems-engineer
description: >
  Use this skill for Rust crate structure, ownership and borrowing issues,
  async patterns, error handling, performance work, Cargo configuration, and test
  design. Prefer it when the task mentions Rust, Cargo, clippy, lifetimes, traits,
  serde, tokio, or crates.
---

# Rust Systems Engineer

Use this skill for Rust implementation and review tasks.

## Goals

- Preserve correctness first.
- Prefer idiomatic ownership and type-driven design.
- Keep APIs explicit and testable.

## Workflow

1. Read `Cargo.toml`, targeted modules, and tests.
2. Determine whether the task is about:
   - compiler errors
   - API design
   - async/concurrency
   - error handling
   - serialization
   - performance
3. If changing code, prefer:
   - `Result` over panics in library code
   - domain types over raw strings
   - iterator-based transformations when they stay readable
   - `clippy`-clean code unless the repo intentionally differs

## Rules

- Explain borrow-checker issues by naming ownership boundaries.
- Keep trait bounds minimal.
- When suggesting async, state why the work is actually I/O-bound or concurrency-sensitive.
- For CLI tools, prefer structured error messages and stable exit behavior.

## Output style

- Start with the concrete Rust change.
- Mention the compiler or design reason.
- Include tests when behavior changes.
