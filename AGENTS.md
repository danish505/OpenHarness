## Harness Execution Protocol

When the Captain asks to run the harness:

1. Read `harness/prompts/run-harness.md`.
2. Use the planner agent to write `harness/plans/plan.md`.
3. Use the implementer agent to read `harness/plans/plan.md` and implement the patch.
4. Use the tester agent to write `harness/reports/test-results.md`.
5. Use the reviewer agent to write `harness/reports/review.md`.
6. If the tester fails, repeat implementer -> tester.
7. If the review fails, repeat implementer → tester → reviewer.
8. Use files as the source of truth, not chat output.
