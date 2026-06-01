# Codex Setup

## Project Files

Place these files in the root of your Laravel project:

```text
.codex/config.toml
.codex/agents/*.toml
harness/
```

Keep your project-level `AGENTS.md` as the global project instruction file.

## MCP

This harness does not require MCP servers for v1.

Normal shell commands are enough:

```bash
vendor/bin/phpunit --no-coverage --testdox
cd harness && npx playwright test
```

If Codex startup is slow, check for global MCP servers in:

```text
~/.codex/config.toml
```

and remove or disable unnecessary `[mcp_servers.*]` blocks.

## Running

From the Laravel project root:

```bash
codex
```

Paste:

```text
harness/prompts/run-harness.md
```

Replace the Task section.

## Tip

If Codex does not follow `harness/prompts/run-harness.md`, add a short Harness Execution Protocol to your root `AGENTS.md`, because Codex automatically reads `AGENTS.md` files while prompt files must be explicitly referenced or pasted.
