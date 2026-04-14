# Tabnine CLI Next Wave

This is the shortest practical recommendation set after the initial starter kit.

## Build Next

Create these first:

1. Two new Docker artifacts:
   - `docker-alpine-optimizer`
   - `/docker:alpine-review`

2. Two new GitLab artifacts:
   - `gitlab-rules-debugger`
   - `/gitlab:rules-debug`

3. Two new Rust artifacts:
   - `rust-test-author`
   - `/rust:test-fix`

4. Two new Angular artifacts:
   - `angular-signals-reviewer`
   - `/angular:signals-review`

5. Four context docs:
   - `docs/docker-conventions.md`
   - `docs/gitlab-pipeline-conventions.md`
   - `docs/rust-conventions.md`
   - `docs/angular-conventions.md`

## Why These First

- They are narrow enough to trigger cleanly.
- They map directly to frequent real tasks.
- They reflect your actual stack assumptions: Alpine and Angular Signals.
- They will quickly show whether skills or commands are more useful in your workflow.

## Follow With

- safety hooks
- Web Fetch recipe docs
- MCP planning docs
- evaluation notes so you can prune weak artifacts
