# Run Laravel Codex Harness

Execute the file-based Codex harness for the task below.

## Task

Replace this section with the actual task.

## Required Flow

1. Use the planner agent.
   - Read `AGENTS.md`, `harness/state/context.json`, and `harness/harness.config.json`.
   - Create `harness/plans/plan.md`.
   - Update `harness/state/context.json`.

2. Use the implementer agent.
   - Read `harness/plans/plan.md`.
   - Apply the smallest safe Laravel patch.
   - Check git status before editing.
   - Do not touch unrelated dirty files.
   - Write `harness/reports/implementation.md`.
   - Write `harness/artifacts/latest-diff.patch`.
   - Update `harness/state/context.json`.

3. Use the tester agent.
   - Read the plan, implementation report, and diff.
   - Prefer focused unit tests for changed fields/rules/logic.
   - Avoid report tests and route tests unless explicitly requested.
   - Run focused PHPUnit first.
   - Write `harness/reports/test-results.md`.
   - Save raw output in `harness/logs/tester.log`.
   - Update `harness/state/context.json`.

4. Use the reviewer agent.
   - Read the plan, implementation report, diff, and test results.
   - Write `harness/reports/review.md`.
   - Update `harness/state/context.json`.

5. Retry loop.
   - If reviewer rejects the patch, send `harness/reports/review.md` back to the implementer.
   - Repeat implementer -> tester -> reviewer until approved or blocked by an environment issue.
