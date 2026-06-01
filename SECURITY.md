# Security Policy

This harness can run commands and inspect local codebases. Use it carefully.

## Do Not Commit

- `.env` files
- secrets
- real logs
- generated diffs from private projects
- screenshots from private apps
- client names
- local paths with sensitive information

## Recommended Use

- Work on a branch or git worktree.
- Review every generated patch before merging.
- Keep MCP servers disabled unless needed.
- Keep raw logs in ignored folders.
