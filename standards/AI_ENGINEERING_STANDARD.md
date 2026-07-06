# AI Engineering Standard

This document defines the core expectations for AI-assisted engineering work.

## 1. Core principle

AI agents are engineering tools, not a replacement for engineering responsibility.

Every agent action has cost: token cost, time cost, review cost, risk cost, context pollution cost, and integration cost.

Optimize for production-grade output per token, not maximum output per request.

## 2. Operating philosophy

```text
Shipping > Endless Refactor
Stability > Elegance
Security > Feature Speed
Verification > Confidence
Small diffs > Large refactors
Production safety > Local cleverness
```

Agents must not turn small tasks into broad rewrites.

## 3. Human ownership

The main agent or human owner keeps responsibility for:

- Scope
- Architecture decisions
- Security decisions
- Integration
- Verification
- Git commits
- Release decisions
- Production risk acceptance

Subagents may investigate or implement bounded slices, but they do not own the final decision.

## 4. Default workflow

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

## 5. Task classification

| Task size | Description | Examples | Subagents |
|---|---|---|---:|
| Tiny | Typo, import, small config | Rename variable, missing import, config value | 0 |
| Small | Isolated fix under 3 files | One component, one validation rule, one unit test | 0 |
| Medium | Feature/fix across several files | API + UI update, endpoint with tests | 0-1 |
| Large | Multi-module feature/audit | New module, security audit, performance investigation | 1-2 |
| Critical | Security, billing, migration, launch | Auth redesign, data migration, vulnerability fix | 1-3 |

## 6. Editing rules

Prefer the smallest change that fully solves the problem.

- Do not refactor unrelated code.
- Do not change style unless required.
- Do not rename files unless required.
- Follow current project patterns for folder structure, naming, error handling, logging, tests, and API conventions.
- Never clean up unrelated code during a task unless explicitly requested.

## 7. Refactor rules

Refactor only when:

- User requested it.
- Required to fix a bug.
- Required to avoid security or data-loss risk.
- Required to make tests pass safely.
- Required for launch-critical maintainability.

Before refactoring, state why it is necessary, files affected, risk level, and verification plan.

During Launch Mode: no cosmetic refactor, no broad cleanup, no architecture rewrite, no "while I am here" changes.

## 8. Testing and verification

Every completed task should include at least one of: unit tests, integration tests, typecheck, build, lint, manual smoke test, command output, or reasoned explanation when verification tools are unavailable.

Verification ladder:

1. Static reasoning
2. Typecheck related package
3. Unit test related file
4. Integration test related module
5. Full test suite
6. Build
7. Manual QA

Maximum 2 implementation retries. After 2 failed attempts, stop, summarize, explain the blocker, and propose options.

## 9. Stop rules

Stop and ask before continuing if:

- Scope doubles or changes direction
- More than 2 implementation attempts fail
- Architecture must change
- Data migration may be destructive
- More than 8 unrelated files need edits
- A larger model is required than planned
- Production risk is unclear
- User assumptions appear wrong
- Security assumption is unclear

## 10. Required output formats

Implementation tasks:

```text
Summary:
Files changed:
Verification:
Risks:
Next step:
```

Investigation tasks:

```text
Summary:
Evidence:
Root cause:
Options:
Recommended option:
```

Review tasks:

```text
Verdict:
Blockers:
Important non-blockers:
Verification:
Launch risk:
```

## 11. Decision rule

When uncertain between two acceptable solutions, prefer:

1. the safer option
2. the simpler option
3. the easier option to verify
4. the easier option to rollback
5. the easier option to maintain

## 12. Anti-patterns

Avoid: reading the whole repository before thinking, spawning agents by default, refactoring while fixing bugs, producing long explanations instead of patches, running broad tests before targeted tests, editing generated files manually, touching unrelated files, changing public API without noting impact, upgrading dependencies during launch mode, creating abstractions before repeated need, and hiding uncertainty.
