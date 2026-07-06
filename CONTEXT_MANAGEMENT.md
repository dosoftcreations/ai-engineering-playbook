# AI Engineering Standard

This is the central engineering standard for AI-assisted software development.

## 1. Core principle

AI agents are part of the engineering workflow, not a replacement for engineering responsibility.

The human or main orchestrating agent owns:

- Scope
- Architecture
- Integration
- Verification
- Security judgment
- Production risk
- Final commit/release decision

## 2. Operating philosophy

```text
Quality per token > output per request
Small diffs > large refactors
Verification > confidence
Production safety > local cleverness
```

## 3. Default workflow

```text
Understand request
↓
Classify task size
↓
Choose model
↓
Read bounded context
↓
Plan minimal path
↓
Implement
↓
Verify
↓
Review diff
↓
Report risks
```

## 4. Task classification

| Task size | Description | Subagents |
|---|---|---:|
| Tiny | Typo, import, small config | 0 |
| Small | Isolated fix under 3 files | 0 |
| Medium | Feature/fix across several files | 0-1 |
| Large | Multi-module feature/audit | 1-2 |
| Critical | Security, billing, migration, launch | 1-3 |

## 5. Stop rules

Stop and ask before continuing if:

- Scope doubles
- More than 2 implementation attempts fail
- Architecture must change
- Data migration may be destructive
- More than 8 unrelated files need edits
- Larger model is required than planned
- Production risk is unclear
- User assumptions appear wrong

## 6. Required final output

For implementation:

```text
Summary:
Files changed:
Verification:
Risks:
Next:
```

For review:

```text
Verdict:
Blockers:
Important non-blockers:
Verification:
Launch risk:
```
