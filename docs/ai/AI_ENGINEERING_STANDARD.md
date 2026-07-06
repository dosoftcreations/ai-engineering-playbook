# DoSoft AI Engineering Standard

Version: 2.0  
Owner: DoSoft Creations  
Purpose: Shared operating standard for AI-assisted software engineering across Codex, Claude Code, Gemini, local agents, and future tools.

---

## 0. Core Principle

AI agents are engineering tools, not magic workers.

Every agent action has cost:

- Token cost
- Time cost
- Review cost
- Risk cost
- Context pollution cost
- Integration cost

Optimize for:

> Production-grade output per token

not:

> Maximum output per request

---

## 1. Operating Philosophy

### 1.1 Revenue Before Perfection

For active product work, especially pre-launch and client work:

```text
Revenue > Perfection
Stability > Elegance
Shipping > Endless Refactor
Security > Feature Speed
```

Agents must not turn small tasks into broad rewrites.

### 1.2 Human Ownership

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

---

## 2. Cost Philosophy

### 2.1 AI Is Not Free

Every spawned agent must justify its cost.

Before spawning, the main agent must ask:

```text
Will this save time, reduce tokens, improve quality, or reduce risk?
```

If the answer is no, do not spawn.

### 2.2 Cost Is Not Just Tokens

A cheap model that creates bad code is expensive.

A large model used for trivial work is wasteful.

Use the lowest-capability model that can do the task well.

---

## 3. Model Routing

| Task Type | Default Model |
|---|---|
| Simple edit | gpt-5.4-mini |
| Rename / copy / text update | gpt-5.4-mini |
| Basic CRUD implementation | gpt-5.4-mini |
| Unit test creation | gpt-5.4-mini |
| Small bug fix | gpt-5.4-mini |
| Medium bug investigation | gpt-5.5 Medium |
| Cross-module integration | gpt-5.5 Medium |
| Performance investigation | gpt-5.5 Medium |
| Security review | gpt-5.5 High |
| Architecture decision | gpt-5.5 Extra High |
| Launch-critical production decision | gpt-5.5 Extra High |

### Extra High Usage Rule

Extra High is allowed only for architecture, security-critical design, data-loss-risk decisions, production launch decisions, complex debugging where Medium failed, legal/compliance-sensitive product reasoning, or irreversible design decisions.

Before using Extra High, state:

```text
Why Medium is insufficient:
```

Never use large models for formatting, renaming, simple tests, obvious type fixes, simple UI copy, boilerplate, rerunning commands, or file moves.

---

## 4. Task Classification

### Tiny Task

Examples: rename variable, typo, copy change, missing import, config value.

Rules: main agent handles directly, no subagent, no architecture discussion, no broad exploration.

### Small Task

Examples: isolated bug, one component, one validation rule, one unit test.

Rules: main agent handles directly, no subagent by default, read only directly related files.

### Medium Task

Examples: small feature, bug across 2–5 files, API + UI update, endpoint with tests.

Rules: may use 1 subagent, bounded scope, main agent integrates and verifies.

### Large Task

Examples: new module, multi-step refactor, security audit, performance investigation, production readiness review.

Rules: maximum 2 subagents by default, 3 only if clearly parallel, execution plan first.

### Critical Task

Examples: auth redesign, billing/webhook changes, production incident, data migration, vulnerability fix, launch gate review.

Rules: maximum 3 subagents, Extra High allowed for planning/review, include verification and rollback consideration.

---

## 5. Spawn Strategy

Spawn subagents only for work that materially advances the goal.

Good reasons:

- Independent investigation
- Isolated module implementation
- Security review
- Test writing while main agent implements
- Parallel verification
- Comparing two bounded approaches

Bad reasons:

- “Just in case”
- Curiosity
- Simple edits
- Avoiding thinking
- Creating more opinions
- Reading the repo blindly

### Maximum Subagents

| Task Size | Max Subagents |
|---|---:|
| Tiny | 0 |
| Small | 0 |
| Medium | 1 |
| Large | 2 |
| Critical | 3 |

Never run more than 3 subagents at once.

Every subagent must receive exact goal, inspect/edit scope, files not to edit, expected output format, verification expected, and reminder not to revert unrelated work.

Required subagent output:

1. Files inspected
2. Files changed
3. Exact findings
4. Patch summary
5. Verification performed
6. Remaining risks
7. Suggested next step

---

## 6. Context Budget

Never read the repository out of curiosity.

Preferred order:

1. User request
2. Relevant README / architecture note
3. Related module entry point
4. Related tests
5. Related types/schema
6. Direct dependencies
7. Broader search only if needed

Default maximum before stopping:

- Tiny: 3 files
- Small: 8 files
- Medium: 20 files
- Large: 40 files
- Critical: 60 files

If more is needed, summarize what has been learned and ask whether to continue.

For long work, maintain a concise working summary: goal, current decision, files touched, known risks, next step.

---

## 7. Editing Rules

Prefer the smallest change that fully solves the problem.

Do not refactor unrelated code. Do not change style unless required. Do not rename files unless required.

Follow current project patterns for folder structure, naming, error handling, DTO/schema style, logging, tests, dependency injection, and API conventions.

Never clean up unrelated code during a task unless explicitly requested.

---

## 8. Refactor Rules

Refactor only when user requested it, required to fix a bug, required to avoid security/data-loss risk, required to make tests pass safely, or required for launch-critical maintainability.

Before refactoring, state why it is necessary, files affected, risk level, and verification plan.

During Launch Mode:

```text
No cosmetic refactor.
No broad cleanup.
No architecture rewrite.
No “while I am here” changes.
```

---

## 9. Testing and Verification

Every completed task should include at least one of: unit tests, integration tests, typecheck, build, lint, manual smoke test, command output, or reasoned explanation when commands cannot be run.

Verification ladder:

1. Static reasoning
2. Typecheck related package
3. Unit test related file
4. Integration test related module
5. Full test suite
6. Build
7. Manual QA

If verification fails, capture exact error and identify whether it is related, pre-existing, environmental, or unknown.

Maximum 2 implementation retries. After 2 failed attempts, stop, summarize attempts, explain blocker, and propose options.

---

## 10. Security Rules

High-risk areas:

- Auth
- Authorization
- Session handling
- Refresh token rotation
- Password reset
- Billing webhook
- Admin panel
- Redirect logic
- URL validation
- File upload
- SSRF
- Webhook verification
- Secrets
- Database migrations

Never ship auth bypass, IDOR, uncontrolled open redirect, SSRF, SQL injection, user-impacting XSS, secret leak, token leak, public admin endpoint, spoofable payment webhook, deleted/disabled resource still accessible, or destructive migration without backup.

For URL shorteners:

- Validate destination URLs
- Block private/internal IPs
- Consider DNS rebinding
- Prevent malicious redirect abuse
- Ensure disabled/deleted/expired links do not redirect
- Separate bot analytics from human analytics when possible
- Ensure cache invalidation after disabling a link
- Rate-limit link creation
- Provide abuse reporting or admin disable flow

---

## 11. Production Rules

Production tasks prioritize data safety, security, stability, rollback, observability, and speed.

Before production changes, check backup, rollback plan, environment, migration safety, secrets, logs/monitoring, and health check.

No production guessing. If uncertain, stop, state uncertainty, and ask.

---

## 12. Launch Mode

Launch Mode priorities:

```text
Security > Stability > Core UX > Performance > Polish > New Features
```

Rules:

- Feature freeze by default
- No broad refactor
- No new architecture
- No optional cleanup
- Fix critical bugs first
- Fix security issues before UI polish
- Keep diffs small
- Verify every change
- Prefer boring solutions
- Avoid dependency upgrades unless required

Launch blockers:

- Auth bypass
- Broken signup/login
- Broken redirect
- Broken payment if paid launch
- Admin cannot disable abuse
- No database backup
- Public stack traces
- Exposed secrets
- Critical XSS/SSRF/open redirect
- Deleted/disabled links still working

---

## 13. Git Discipline

Before staging or committing:

- Inspect current worktree
- Identify user changes
- Do not revert unrelated dirty files
- Stage only files related to completed checkpoint

Commit incrementally when allowed. Good commit sizes: one bug fix, one feature slice, one test addition, one config change.

Use clear commit messages such as:

```text
fix(redirect): prevent disabled links from redirecting
feat(auth): add refresh token reuse detection
test(billing): cover webhook idempotency
```

---

## 14. Stop Rules

Stop and ask before continuing if scope doubles, task changes direction, more than 2 attempts fail, more than 8 unrelated files need edits, architecture must change, security assumption is unclear, data migration may be destructive, a larger model is required than planned, user assumptions are wrong, or next step affects production risk.

---

## 15. Technical Debt Budget

Each task may create at most one known technical debt item.

If more than one debt item is required, stop, explain tradeoff, and ask whether to proceed.

Every debt item must include what debt was introduced, why it was accepted, impact, and suggested future fix.

---

## 16. Output Format

Implementation tasks:

1. What changed
2. Files changed
3. Verification performed
4. Remaining risks
5. Next recommended step

Investigation tasks:

1. Summary
2. Evidence
3. Root cause
4. Options
5. Recommended option

Review tasks:

1. Severity
2. File/path
3. Issue
4. Why it matters
5. Fix recommendation

---

## 17. Anti-Patterns

Avoid reading the whole repo before thinking, spawning agents by default, refactoring while fixing bugs, producing long explanations instead of patches, running huge tests before targeted tests, editing generated files manually, touching unrelated files, changing public API without noting impact, upgrading dependencies during launch mode, creating abstractions before repeated need, and hiding uncertainty.

---

## 18. Metrics

Track weekly:

- Tasks completed
- Tasks requiring manual rework
- Agent failures
- Average subagents per task
- Extra High usages
- Limit exhaustion day
- Launch blockers resolved
- Bugs introduced by AI
- Bugs caught by AI

Goal:

```text
More shipped work per token.
Less manual rework.
Fewer runaway agent loops.
```

---

## 19. DoSoft Default Decision Rule

When uncertain between two acceptable solutions, choose the one that is safer, simpler, easier to verify, easier to rollback, and faster to ship, in that order.
