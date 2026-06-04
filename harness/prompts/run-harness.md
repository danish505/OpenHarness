# Run Laravel Codex Harness

Execute the file-based Codex harness for the task below.

## Task

Replace this section with the actual task.

## Required flow

1. Use the planner agent.
    - Read AGENTS.md and harness/state/context.json.
    - Create harness/plans/plan.md.
    - Update harness/state/context.json.
    - ask the captain before passing it to the implementer agent

2. Use the implementer agent.
    - Disable MCP Severs for this project
    - Read harness/plans/plan.md.
    - Apply the smallest safe Laravel 7 / PHP 7.4 patch.
    - Check git status before editing.
    - Do not touch unrelated dirty files.
    - Write harness/reports/implementation.md.
    - Write harness/artifacts/latest-diff.patch.
    - Update harness/state/context.json.

3. Use the tester agent.
    - Read the plan, implementation report, and diff.
    - Run focused PHPUnit first.
    - Run a broader PHPUnit if appropriate.
    - Run npm run build if frontend assets are changed.
    - Run Playwright from the harness folder if UI/browser behavior changed.
    - Write harness/reports/test-results.md.
    - Save raw output in harness/logs/tester.log.
    - Update harness/state/context.json.

4. Use the reviewer agent.
    - Read the plan, implementation report, diff, and test results.
    - Review Laravel conventions, PHP 7.4 compatibility, validation, authorization, tests, security, and unrelated changes.
    - Write harness/reports/review.md.
    - Update harness/state/context.json.

5. Retry loop.
    - If reviewer rejects the patch, send harness/reports/review.md back to the implementer.
    - Repeat implementer -> tester -> reviewer until approved or blocked by an environment issue.

## Rules

- Keep changes minimal and reversible.
- Preserve Laravel 7.x and PHP 7.4 compatibility.
- Do not use PHP 8+ syntax.
- Do not add dependencies for trivial utilities.
- Do not store secrets in state, reports, logs, or code.
- Keep harness/state/context.json concise.
- Put raw command output in harness/logs/.
- The next agent must be able to continue from files alone.
