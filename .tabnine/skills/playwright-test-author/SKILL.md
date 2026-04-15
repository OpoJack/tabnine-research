# Playwright Test Author

## Purpose

Author robust, maintainable, and deterministic Playwright tests.

Focus on:

- reliability over cleverness
- readability over abstraction
- isolation over reuse

## Core Principles

### 1. Use Locators, Not Selectors

- Always prefer `getByRole`, `getByTestId`, `getByLabel`
- Avoid brittle CSS/XPath

### 2. Auto-Waiting First

- Never use arbitrary timeouts
- Rely on Playwright's built-in waiting

BAD:
await page.waitForTimeout(2000)

GOOD:
await expect(page.getByRole('button')).toBeVisible()

### 3. One Assertion Intent Per Test

- Keep tests small and focused
- Avoid “god tests”

### 4. Test Isolation

- No shared state between tests
- Use `test.beforeEach` instead of cross-test reuse

### 5. Use Fixtures Properly

- Prefer Playwright fixtures over manual setup
- Keep setup declarative

## Recommended Structure

- tests/
  - feature-name.spec.ts
- fixtures/
- pages/ (optional, keep thin)

## Example

```ts
import { test, expect } from "@playwright/test";

test("user can log in", async ({ page }) => {
  // Navigate to login page
  await page.goto("/login");

  // Fill credentials
  await page.getByLabel("Email").fill("user@test.com");
  await page.getByLabel("Password").fill("password");

  // Submit form
  await page.getByRole("button", { name: "Sign in" }).click();

  // Assert successful login
  await expect(page.getByRole("heading", { name: "Dashboard" })).toBeVisible();
});
```
