---

# 2. `.tabnine/skills/playwright-flake-debugger/SKILL.md`

````markdown
# Playwright Flake Debugger

## Purpose

Diagnose and eliminate flaky Playwright tests.

## Core Diagnosis Framework

### Step 1: Identify Flake Type

- timing issue
- selector instability
- network dependency
- test pollution

### Step 2: Replace Timing Assumptions

BAD:
await page.waitForTimeout(3000)

GOOD:
await expect(locator).toBeVisible()

### Step 3: Validate Locator Stability

- Prefer:
  - getByRole
  - getByTestId
- Avoid:
  - nth-child
  - fragile CSS chains

### Step 4: Check Async Boundaries

Common issues:

- missing `await`
- race conditions between UI and assertions

### Step 5: Network Control

- Mock unstable APIs
- Use `route()` to stabilize responses

Example:

```ts
// Intercept API call and return stable data
await page.route("**/api/user", (route) => {
  route.fulfill({
    status: 200,
    body: JSON.stringify({ name: "Test User" }),
  });
});
```
````
