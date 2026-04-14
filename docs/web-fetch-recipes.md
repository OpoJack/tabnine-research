# Web Fetch Recipes

These recipes are for Tabnine CLI prompts that use explicit URLs. They exist because Web Fetch works best when the prompt includes the exact pages to read and a concrete comparison task.

## General Pattern

Use prompts shaped like this:

`Read <url> and compare it against @<local-file>. List concrete mismatches only.`

## Docker Recipes

- `Read https://docs.docker.com/build/building/multi-stage/ and compare it against @Dockerfile. List opportunities to improve stage separation and cache reuse.`

- `Read https://docs.docker.com/build/cache/optimize/ and compare it against @Dockerfile and @.dockerignore. Identify cache-miss causes only.`

- `Read https://wiki.alpinelinux.org/wiki/Alpine_Package_Keeper and compare it against the package-install steps in @Dockerfile. Flag unnecessary or risky package usage.`

## GitLab Recipes

- `Read https://docs.gitlab.com/ee/ci/yaml/ and compare it against @.gitlab-ci.yml. Identify unclear or redundant job logic.`

- `Read https://docs.gitlab.com/ee/ci/jobs/job_rules.html and compare it against @.gitlab-ci.yml. Explain any branch or merge-request rule mismatches.`

- `Read https://docs.gitlab.com/ee/ci/caching/ and compare it against @.gitlab-ci.yml. Identify cache vs artifact misuse only.`

## Rust Recipes

- `Read https://doc.rust-lang.org/book/ch09-02-recoverable-errors-with-result.html and compare it against @src/main.rs. Identify weak error propagation patterns only.`

- `Read https://doc.rust-lang.org/book/ch11-00-testing.html and compare it against @src and @tests. Identify missing test categories.`

- `Read https://doc.rust-lang.org/clippy/ and compare it against @src. Suggest only high-signal idiomatic cleanups.`

## Angular Recipes

- `Read https://angular.dev/guide/signals and compare it against @src/app. Identify local state that is more complex than necessary.`

- `Read https://angular.dev/guide/components and compare it against @src/app. Identify component-boundary issues only.`

- `Read https://angular.dev/guide/testing and compare it against @src/app and @src/**/*.spec.ts. Identify brittle or missing tests.`

## Prompt Variants Worth Comparing

- `List concrete mismatches only.`
- `Give the smallest viable diff only.`
- `Find correctness issues before style issues.`
- `Assume the local conventions docs are authoritative if they conflict with generic guidance.`

## Notes

- Prefer one or two URLs at a time.
- Ask for comparison against specific files, not broad directories, when possible.
- If the result quality drops, reduce the scope of the prompt rather than adding more URLs.
