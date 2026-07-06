# Model Selection Standard

Use the lowest-capability model that can do the task well.

## Default routing

| Task | Recommended model | Reason |
|---|---|---|
| Rename, copy, formatting | Small/mini | Low reasoning |
| Simple unit test | Small/mini | Bounded |
| CRUD endpoint | Small/mini | Pattern-based |
| Isolated bug fix | Small/mini or medium | Depends on ambiguity |
| Cross-module bug | Medium | Requires integration reasoning |
| Performance investigation | Medium/high | Needs diagnosis |
| Security review | High | Risk-sensitive |
| Architecture | Extra high | High impact |
| Production launch decision | Extra high | Risk-sensitive |

## Extra high rule

Before using an extra high reasoning model, state:

```text
Why medium is insufficient:
```

Valid reasons:

- Architecture choice affects many modules
- Security risk is high
- Data-loss risk exists
- Billing/auth logic is involved
- Previous attempts failed
- Production launch decision

Invalid reasons:

- Convenience
- Simple implementation
- Avoiding reading code
- Formatting
- Boilerplate generation

## Model escalation

Escalate only when:

1. The current model cannot resolve ambiguity.
2. A failed attempt produced useful evidence.
3. The next decision has high cost if wrong.

Do not escalate just because the output is imperfect.
