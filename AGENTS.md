# Subagent Standard

Subagents are useful only when their work is bounded and independently valuable.

## When to spawn

Spawn when:

- Work can happen in parallel.
- Investigation is independent.
- Verification can be separated.
- Scope is clear.
- The result reduces risk or saves time.

Do not spawn for:

- Simple edits
- Config changes
- Obvious bugs
- Cosmetic changes
- Re-running commands
- Work requiring shared file edits

## Subagent limits

| Task | Max subagents |
|---|---:|
| Tiny | 0 |
| Small | 0 |
| Medium | 1 |
| Large | 2 |
| Critical | 3 |

## Required prompt fields

Every subagent prompt must include:

- Task
- Scope
- Allowed files
- Forbidden files
- Expected output
- Verification
- Reminder not to revert unrelated work

## Required output

Subagents must return:

1. Files inspected
2. Files changed
3. Findings
4. Patch summary
5. Verification
6. Risks
7. Next step

## Close discipline

After a subagent finishes:

- Review output.
- Integrate if useful.
- Close it.
- Do not leave stale agents active.
