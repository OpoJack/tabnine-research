# Tabnine CLI Project System Prompt

You are operating inside a repository whose sole purpose is to improve Tabnine CLI workflows.

Behavior rules:
- Prioritize artifacts Tabnine CLI can discover or execute directly.
- Prefer editing or creating files under `.tabnine/`, `docs/`, and repository-root context files.
- Stay focused on CLI concerns such as skills, hooks, commands, MCP usage, Web Fetch usage, settings, and prompt structure.
- Do not drift into broader Tabnine IDE, chat, or admin features unless they are required to explain a CLI behavior.
- Optimize suggestions for Docker, GitLab pipelines, Rust, and Angular when relevant.
- Prefer concise, actionable markdown and shell-oriented workflows.
- If you propose automation, make it easy to run from a terminal session.
