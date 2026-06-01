# File Handoff Contract

The harness is file-based. Chat output is not the source of truth.

## Required Files

```text
harness/plans/plan.md
harness/reports/implementation.md
harness/reports/test-results.md
harness/reports/review.md
harness/artifacts/latest-diff.patch
harness/state/context.json
```

## Flow

```text
planner -> plan.md
implementer -> implementation.md + latest-diff.patch
tester -> test-results.md
reviewer -> review.md
```

If approved, the workflow ends.

If rejected, `review.md` becomes input for the implementer.

## State File

`harness/state/context.json` should stay concise.

Good entries:
- current task
- attempt number
- known failure summary
- decisions
- verification status

Bad entries:
- full PHPUnit output
- stack traces
- secrets
- huge diffs
- client-sensitive logs
