# Tabnine CLI Doc Notes

These notes capture the parts of the official Tabnine CLI docs that directly informed this repo.

## Key doc takeaways

- `TABNINE.md` is a first-class CLI context file.
- `.tabnine/agent/system.md` overrides project system behavior.
- skills live in `.tabnine/skills` for workspace scope and are loaded on demand.
- hooks live in `.tabnine/hooks` and must be enabled in settings.
- custom commands live in `.tabnine/agent/commands` and map file paths to slash-command namespaces.
- user and workspace settings merge hierarchically through `settings.json`.
- Web Fetch works best when the prompt includes explicit URLs.
- MCP servers can be added with `tabnine mcp add ...` and selected at runtime with `--allowed-mcp-server-names`.

## High-value commands from the docs

```bash
/settings
/skills list
/skills reload
/hooks
/init
tabnine skills list
tabnine mcp list
tabnine --allowed-mcp-server-names filesystem
tabnine --approval-mode plan --allowed-mcp-server-names filesystem
```

## Good next experiments

- Add a filesystem MCP server for a second repo you touch often.
- Create a `gitlab-release-engineer` skill if you do frequent release tagging/versioning.
- Add a stricter hook once you know which risky commands you want to intercept.
- Create repo-specific custom commands that wrap your most common review and debugging prompts.

## Sources

- https://docs.tabnine.com/main/getting-started/tabnine-cli
- https://docs.tabnine.com/main/getting-started/tabnine-cli/features/cli-commands
- https://docs.tabnine.com/main/getting-started/tabnine-cli/features/commands
- https://docs.tabnine.com/main/getting-started/tabnine-cli/features/settings
- https://docs.tabnine.com/main/getting-started/tabnine-cli/features/hooks
- https://docs.tabnine.com/main/getting-started/tabnine-cli/features/agent-skills
- https://docs.tabnine.com/main/getting-started/tabnine-cli/features/mcp-server-config
- https://docs.tabnine.com/main/getting-started/tabnine-cli/features/web-fetch
- https://docs.tabnine.com/main/getting-started/tabnine-cli/features/subagents
