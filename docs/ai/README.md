# DoSoft AI Engineering Docs

This folder contains shared operating rules for AI-assisted engineering.

## Files

- `AI_ENGINEERING_STANDARD.md` — main company-wide standard.
- `agent.md` — Codex-specific working rules.
- `review.md` — review and audit standard.
- `release.md` — launch mode and manual deployment rules.
- `prompts/codex-audit.md` — prompt for production/security audit.
- `prompts/codex-implementation.md` — prompt for bounded implementation work.
- `prompts/launch-gate.md` — prompt for pre-launch gate review.

## Suggested Repo Placement

```text
docs/
  ai/
    AI_ENGINEERING_STANDARD.md
    agent.md
    review.md
    release.md
    prompts/
```

For tools that expect root-level instruction files, copy or symlink:

```text
docs/ai/agent.md -> AGENTS.md
```

or paste the relevant sections into the tool-specific config.
