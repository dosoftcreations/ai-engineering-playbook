# Subagent Standard

Subagents are useful when the work is bounded, independent, and easy to verify.

## When to use subagents

Good reasons to spawn:

- Independent investigation
- Isolated module implementation
- Security review
- Test writing while main agent implements
- Parallel verification
- Comparing two bounded approaches

## When not to use them

Bad reasons to spawn:

- "Just in case"
- Curiosity
- Simple edits that do not need separation
- Avoiding thinking
- Creating more opinions
- Reading the repository blindly
- Tasks that require shared context or frequent coordination
- Broad refactors that are difficult to isolate

## Maximum subagents by task size

| Task size | Max subagents |
|---|---:|
| Tiny | 0 |
| Small | 0 |
| Medium | 1 |
| Large | 2 |
| Critical | 3 |

Never run more than 3 subagents at once.

## Spawn cost justification

Before spawning, the main agent must ask:

```text
Will this save time, reduce tokens, improve quality, or reduce risk?
```

If the answer is no, do not spawn.

## Required subagent instructions

Every subagent must receive:

- Exact goal
- Inspect/edit scope (which files)
- Files not to edit
- Expected output format
- Verification expected
- Reminder not to revert unrelated work

## Required subagent output

Every subagent must return:

1. Files inspected
2. Files changed
3. Exact findings
4. Patch summary
5. Verification performed
6. Remaining risks
7. Suggested next step

## Required discipline

Every subagent task should have a clear scope, explicit success criteria, and a verification step.
