# Tabnine CLI Artifact Lab

This repository is a sandbox for building and testing artifacts that make Tabnine CLI more useful.

The scope is narrow on purpose:
- only Tabnine CLI artifacts
- no broader Tabnine product exploration
- emphasis on Docker, GitLab CI, Rust, and modern Angular with Signals

## What This Repo Contains

At a high level, this repo is organized around five kinds of Tabnine-facing artifacts.

### 1. Global Context

These files tell Tabnine what this repository is and how it should generally behave.

- [TABNINE.md](/home/jack/Github/tabnine-research/TABNINE.md)
- [.tabnine/agent/system.md](/home/jack/Github/tabnine-research/.tabnine/agent/system.md)
- [.tabnine/agent/settings.json](/home/jack/Github/tabnine-research/.tabnine/agent/settings.json)

Use these for:
- project purpose
- global behavior expectations
- broad priorities
- workspace-level settings

Think of these as the "always-on" layer.

### 2. Skills

Skills are specialist playbooks.

They live under:
- [.tabnine/skills](/home/jack/Github/tabnine-research/.tabnine/skills)

Examples in this repo:
- `docker-operator`
- `docker-alpine-optimizer`
- `gitlab-pipeline-engineer`
- `gitlab-rules-debugger`
- `rust-systems-engineer`
- `rust-test-author`
- `angular-workspace-maintainer`
- `angular-signals-reviewer`

Use skills for:
- narrow expertise
- repeatable review heuristics
- specialist workflows
- stack-specific procedures

Think of a skill as "how a specialist thinks and works."

### 3. Commands

Commands are the main on-demand invocation surface.

They live under:
- [.tabnine/agent/commands](/home/jack/Github/tabnine-research/.tabnine/agent/commands)

Examples:
- `/docker:diagnose`
- `/docker:alpine-review`
- `/gitlab:pipeline`
- `/gitlab:rules-debug`
- `/rust:review`
- `/rust:test-fix`
- `/angular:check`
- `/angular:signals-review`

Use commands for:
- repeatable entry points
- common prompt templates
- focused specialist tasks you want to run quickly

Think of a command as "what you actually type to trigger a workflow."

### 4. Hooks

Hooks are lightweight shell scripts that add reminders, warnings, and context cues.

They live under:
- [.tabnine/hooks](/home/jack/Github/tabnine-research/.tabnine/hooks)

Use hooks for:
- safety warnings
- protected-branch reminders
- destructive-shell warnings
- stack-specific context injection

Think of hooks as "guardrails around the agent," not as specialists.

See:
- [.tabnine/hooks/README.md](/home/jack/Github/tabnine-research/.tabnine/hooks/README.md)

### 5. Local Docs

These are plain markdown files that give Tabnine better repo-local knowledge.

They live mainly under:
- [docs](/home/jack/Github/tabnine-research/docs)

Examples:
- conventions docs
- backlog docs
- Web Fetch recipes
- MCP planning docs
- evaluation templates

Use these for:
- stable project knowledge
- stack conventions
- experiment planning
- prompt recipes

Think of these as the local knowledge base.

## How These Pieces Fit Together

The simplest way to understand the repo is as a stack of layers.

### Always-On Layer

`TABNINE.md`, `system.md`, and `settings.json` shape the default behavior of the CLI in this repository.

### Specialist Layer

Skills define narrow roles like:
- Alpine Docker reviewer
- GitLab rules debugger
- Rust test author
- Angular Signals reviewer

### Trigger Layer

Commands give you a fast way to invoke those specialist workflows without rewriting the prompt each time.

### Guardrail Layer

Hooks add small warnings and context reminders while the CLI is operating.

### Knowledge Layer

The `docs/` directory provides conventions and recipes that both you and Tabnine can refer to.

## Are Commands The Main Way Skills Get Used?

They are one of the best ways, yes.

In practice, skills can be used in a few ways:

1. Implicitly, when the task clearly matches the skill description.
2. Explicitly, when you ask for that specialist behavior in the prompt.
3. Indirectly, through a command whose prompt is clearly aligned with the skill.

For reliable day-to-day usage, the strongest pattern is:

1. create a narrow skill
2. create a matching command
3. support both with a conventions doc

That gives you a stable specialist workflow instead of hoping the right behavior emerges from a generic prompt.

## Example Of How One Stack Area Connects

For Angular in this repo:

- [docs/angular-conventions.md](/home/jack/Github/tabnine-research/docs/angular-conventions.md) says the local preference is Signals-first.
- [.tabnine/skills/angular-signals-reviewer/SKILL.md](/home/jack/Github/tabnine-research/.tabnine/skills/angular-signals-reviewer/SKILL.md) defines the specialist behavior.
- [.tabnine/agent/commands/angular/signals-review.toml](/home/jack/Github/tabnine-research/.tabnine/agent/commands/angular/signals-review.toml) gives you a reusable trigger.
- [.tabnine/hooks/inject-angular-context.sh](/home/jack/Github/tabnine-research/.tabnine/hooks/inject-angular-context.sh) adds a reminder when Angular files are detected.

That combination effectively acts like an Angular specialist setup.

The same pattern applies to Docker, GitLab CI, and Rust.

## A Good Beginner Workflow

If you are new to Tabnine CLI, use the repo in this order:

1. Start with the global context files so you understand the baseline behavior.
2. Read the conventions docs for your stack area.
3. Use a matching slash command for the task you want.
4. If results are weak, refine the skill or the command, not just the one-off prompt.
5. Use the evaluation docs to record what worked.

## What To Read Next

- [docs/tabnine-cli-power-user-guide.md](/home/jack/Github/tabnine-research/docs/tabnine-cli-power-user-guide.md)
- [docs/tabnine-cli-agent-patterns.md](/home/jack/Github/tabnine-research/docs/tabnine-cli-agent-patterns.md)
- [docs/tabnine-cli-artifact-backlog.md](/home/jack/Github/tabnine-research/docs/tabnine-cli-artifact-backlog.md)
- [docs/tabnine-cli-next-wave.md](/home/jack/Github/tabnine-research/docs/tabnine-cli-next-wave.md)
- [docs/web-fetch-recipes.md](/home/jack/Github/tabnine-research/docs/web-fetch-recipes.md)

## Current Mental Model

Use this shorthand:

- `TABNINE.md` = repo brief
- `system.md` = operating policy
- `SKILL.md` = specialist playbook
- `commands/*.toml` = trigger surface
- `hooks/*.sh` = guardrails
- `docs/*.md` = local knowledge

That is the core design of this repository.
