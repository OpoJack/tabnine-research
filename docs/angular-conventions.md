# Angular Conventions

These conventions exist so Tabnine CLI understands that this codebase is modern Angular and is moving toward Signals-first patterns.

## Default Assumptions

- Prefer Signals, `computed`, and `effect` for local reactive state where they fit.
- Do not default to RxJS for component state when Signals can express the flow more clearly.
- If RxJS remains necessary for external streams or existing integrations, keep the boundary explicit.

## Component Design

- Keep component responsibilities narrow.
- Prefer clear state ownership over cross-component implicit behavior.
- Keep template logic shallow and readable.
- Match existing workspace patterns for standalone components if the project already uses them.

## Data Flow

- Prefer Signals for view-model state and derived values.
- Use RxJS where the source is inherently stream-based, but avoid converting everything into observables by default.
- When bridging RxJS and Signals, make the transition point obvious.

## Build and Workspace

- Keep `angular.json`, tsconfig files, and environment handling aligned.
- Treat build config changes as workspace-level changes with broader impact.
- Pay attention to bundle budgets, test configuration, and generated output assumptions.

## Tests

- Add or update tests when component behavior changes.
- Keep tests aligned with modern Angular patterns.
- Prefer readable setup over abstract test helpers unless the pattern is already established.

## Review Priorities

When reviewing Angular code, prioritize:

1. clear Signals-oriented data flow
2. component and template maintainability
3. correct state ownership boundaries
4. test coverage and brittleness
