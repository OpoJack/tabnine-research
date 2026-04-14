# MCP Filesystem Plan

This document captures ideas for filesystem-oriented MCP usage on the machine where Tabnine CLI actually runs.

## Main Goal

Expose a few high-value local directories so Tabnine can read adjacent repositories or shared config without copying files around.

## Good Candidates

- sibling repositories that share Docker patterns
- repositories with reusable GitLab CI templates
- shared Rust crates or internal libraries
- Angular workspace examples or migration sandboxes
- shell-script or infra repositories that hold deployment conventions

## Good Questions To Answer With Filesystem MCP

- How does another repo solve the same Docker layering problem?
- Which pipeline templates already exist elsewhere?
- Is there a better Rust error-handling pattern in a sibling crate?
- How are Signals used in a newer Angular repo?

## Suggested Guardrails

- Expose only a small set of trusted directories.
- Keep the mounted scope narrow enough that search results stay relevant.
- Prefer read-oriented workflows before considering any writable integration.

## Future Setup Notes

When you configure this on the other machine, document:

- which directories are exposed
- what names you give the MCP servers
- which commands you most often run with `--allowed-mcp-server-names`
