---
name: angular-signals-reviewer
description: >
  Use this skill for modern Angular code that should prefer Signals, computed values,
  effects, local state ownership, and reducing unnecessary RxJS usage. Prefer it when
  reviewing or designing Angular component data flow.
---

# Angular Signals Reviewer

Use this skill when Angular work should be evaluated through a Signals-first lens.

## Goals

- Prefer clear Signals-oriented state over RxJS-heavy local component logic.
- Keep component boundaries easy to reason about.
- Reduce reactive complexity when the same outcome is clearer with Signals.

## Workflow

1. Read:
   - `package.json`
   - `angular.json`
   - the target component, service, template, and tests
2. Classify the current reactive model:
   - Signals-first
   - mixed Signals and RxJS
   - RxJS-dominant local state
3. Identify whether state should be:
   - local signal state
   - derived `computed` state
   - side-effect driven with `effect`
   - left as RxJS because the source is inherently stream-based

## Rules

- Do not replace RxJS blindly if it is representing an external stream boundary.
- Prefer Signals for local UI state and derived values.
- Call out awkward bridges between observables and Signals.
- Keep template changes small and readable.

## Output style

- Start with the current reactive smell or missed opportunity.
- Then show the smallest Signals-oriented improvement.
- Mention any cases where RxJS should remain in place.
