# Model Selection Standard

Model selection should reflect the task, the cost constraints, and the reliability requirements.

## Guiding principles

- Use the smallest model that can complete the task with acceptable quality.
- Use stronger models for tasks that require deeper reasoning or higher precision.
- Keep human review for security-sensitive, mission-critical, or customer-facing changes.
- Avoid treating model choice as a substitute for engineering discipline.

## Default routing

| Task | Recommended tier | Reason |
|---|---|---|
| Rename, copy, formatting | Small/mini | Low reasoning |
| Simple unit test | Small/mini | Bounded |
| CRUD endpoint | Small/mini | Pattern-based |
| Isolated bug fix | Small/mini or medium | Depends on ambiguity |
| Cross-module bug | Medium | Requires integration reasoning |
| Performance investigation | Medium or high | Needs diagnosis |
| Security review | High | Risk-sensitive |
| Architecture decision | Extra-high | High impact |
| Production launch decision | Extra-high | Risk-sensitive |

## Extra-high usage rule

Before using an extra-high reasoning model, state:

```text
Why medium is insufficient:
```

Valid reasons:

- Architecture choice affects many modules
- Security risk is high
- Data-loss risk exists
- Billing or auth logic is involved
- Previous attempts with lower tiers failed
- Production launch decision
- Irreversible design decision

Invalid reasons:

- Convenience
- Simple implementation
- Avoiding reading code
- Formatting or boilerplate generation

## Model escalation

Escalate only when:

1. The current model cannot resolve ambiguity.
2. A failed attempt produced useful evidence.
3. The next decision has high cost if wrong.

Do not escalate just because the output is imperfect.

Never use high-tier models for formatting, renaming, simple tests, obvious type fixes, simple UI copy, boilerplate, rerunning commands, or file moves.
