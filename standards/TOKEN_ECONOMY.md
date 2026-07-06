# Token Economy Standard

Use AI efficiently without sacrificing correctness or review quality. The goal is not to minimize tokens at all costs, but to maximize useful engineering output per token.

## Principles

- Prefer the smallest acceptable model for the task.
- Avoid repeated prompts that could have been handled in one coherent request.
- Keep prompts scoped to the task at hand.
- Use AI for mechanical or repetitive work when it improves reliability and speed.

## Main sources of waste

- Reading too many files without a specific query or hypothesis.
- Spawning too many subagents or running them on overlapping scopes.
- Long-winded conversational explanations instead of precise code patches.
- Infinite retry loops on failing commands without checking assumptions.
- Refactoring unrelated code or files during a focused task.
- Running broad, un-targeted searches.
- Repeating context that the orchestrator or agent already knows.
- Using high-reasoning tiers for low-complexity work.

## Budget rules

| Task size | File read budget | Subagent budget | Retry budget |
|---|---:|---:|---:|
| Tiny | 3 | 0 | 1 |
| Small | 8 | 0 | 1 |
| Medium | 20 | 1 | 2 |
| Large | 40 | 2 | 2 |
| Critical | 60 | 3 | 2 |

If a task exceeds its budget, pause and summarize why the context or scope is expanding before continuing.

## Good token behavior

- Read entry points, READMEs, and APIs first to build a mental map.
- Search for targeted symbols or definitions rather than reading full files.
- Prefer diffs and code blocks over long prose explanations.
- Summarize findings before continuing long-running tasks.
- Close subagents immediately once their task is complete.
- Use lightweight tiers for bounded coding work.

## Bad token behavior

- Reading the entire repository blindly.
- Spawning subagents "just in case" without a clear, independent scope.
- Explaining obvious code changes at length in prose.
- Re-running the same failed test or build command repeatedly.
- Asking multiple agents to inspect the same files without coordinating their inputs.
