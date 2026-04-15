---

# 3. `.tabnine/skills/playwright-ci-optimizer/SKILL.md`

````markdown
# Playwright CI Optimizer

## Purpose

Make Playwright test suites fast, parallel, and CI-stable.

## Core Principles

### 1. Parallelism First

- Use Playwright’s built-in parallelization
- Avoid global state

```ts
// Enable full parallelism
export default defineConfig({
  fullyParallel: true,
});
```
````
