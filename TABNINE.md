# Tabnine CLI Workspace Context

This repository exists to hold Tabnine CLI artifacts that improve terminal-first workflows.

Scope:
- Focus only on Tabnine CLI customization and automation artifacts.
- Prefer project-local artifacts over global ones so experiments stay isolated to this repo.
- Treat this repository as a sandbox for testing skills, hooks, custom slash commands, and prompt guidance.

Primary technologies to optimize for:
- Docker
- GitLab CI/CD pipelines
- Rust
- Angular

Operating assumptions:
- The user wants practical, executable help rather than broad product overviews.
- When multiple approaches are possible, prefer ones that work well in a terminal and CI context.
- Use repository-local context files and skills before suggesting unrelated Tabnine features.

What good assistance looks like here:
- Generate or refine Tabnine CLI artifacts in discoverable paths.
- Propose shell commands that are copyable and safe to review.
- Help compose or improve Dockerfiles, Compose files, GitLab pipelines, Rust crates, Angular workspace changes, and supporting docs.
- Keep recommendations concrete, with file-level outputs when possible.

Preferred workflow:
1. Read existing `.tabnine/` artifacts first.
2. Use project skills when the task clearly matches Docker, GitLab CI, Rust, or Angular work.
3. Keep hooks lightweight and predictable.
4. If a request depends on external docs, prefer URL-based Web Fetch workflows or MCP servers over generic discussion.
