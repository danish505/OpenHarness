# Design Patterns

## Base Pattern: Prompt Chaining

The primary design is prompt chaining:

```text
planner -> implementer -> tester -> reviewer
```

Each step processes the previous step's output.

## Quality Loop: Evaluator-Optimizer

When the reviewer rejects a patch, the result becomes an evaluator-optimizer loop:

```text
implementer -> tester -> reviewer
      ^                    |
      |                    v
      +------ feedback ----+
```

## Optional Pattern: Parallelization

Parallelization can be added later in two ways.

### Sectioning

Use sectioning before implementation when the task has independent concern areas.

Example section agents:

```text
data/model impact
validation/security impact
test strategy
ui/browser impact
```

### Voting

Use voting after implementation when you want stronger review confidence.

Example voting reviewers:

```text
Laravel conventions reviewer
security reviewer
test quality reviewer
compatibility reviewer
```

## Recommendation

Start simple:

```text
planner -> implementer -> tester
```

Then add:

```text
reviewer + retry loop
```

Only add sectioning or voting after the basic workflow is reliable.
