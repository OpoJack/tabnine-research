# Rust Conventions

These conventions exist so Tabnine CLI can produce Rust changes that match local expectations.

## Design Priorities

- Correctness comes before cleverness.
- Prefer explicit types and stable behavior.
- Favor maintainable code over micro-optimizations unless performance is the actual task.

## Error Handling

- Prefer `Result` over panics in normal control flow.
- Add useful context when propagating errors.
- Keep error behavior stable for CLI surfaces and library callers.

## Tests

- Add or update tests when behavior changes.
- Prefer focused tests over broad, brittle fixtures.
- Cover edge cases and failure paths, not only the happy path.
- Use integration tests when behavior crosses crate or module boundaries.

## API and Structure

- Keep public APIs small and deliberate.
- Prefer domain-specific types over loosely structured strings where practical.
- Keep trait bounds as small as possible.
- Separate parsing, validation, and side effects when that improves clarity.

## Review Priorities

When reviewing Rust code, prioritize:

1. behavioral correctness
2. ownership and lifetime clarity
3. error handling quality
4. test coverage
5. idiomatic cleanup with limited churn
