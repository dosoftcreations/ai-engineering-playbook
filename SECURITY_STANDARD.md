# Token Economy Standard

AI usage has cost. The goal is not to minimize tokens at all costs, but to maximize useful engineering output per token.

## Main sources of waste

- Reading too many files
- Spawning too many agents
- Long explanations instead of patches
- Retry loops
- Refactoring unrelated code
- Running broad searches without hypotheses
- Repeating context already known
- Using large models for small work

## Budget rules

| Task size | File read budget | Subagent budget | Retry budget |
|---|---:|---:|---:|
| Tiny | 3 | 0 | 1 |
| Small | 8 | 0 | 1 |
| Medium | 20 | 1 | 2 |
| Large | 40 | 2 | 2 |
| Critical | 60 | 3 | 2 |

If a task exceeds budget, stop and summarize why.

## Good token behavior

- Read entry points first.
- Search targeted symbols.
- Prefer diffs over explanations.
- Summarize before continuing long work.
- Close completed subagents.
- Use small models for bounded work.

## Bad token behavior

- Reading the whole repository.
- Spawning agents “just in case.”
- Explaining obvious changes at length.
- Re-running the same failed command repeatedly.
- Asking multiple agents to inspect the same files without reason.
