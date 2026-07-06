# Codex Agent Rules

This file is optimized for Codex-style AI coding agents working across DoSoft projects.

It inherits from:

```text
docs/ai/AI_ENGINEERING_STANDARD.md
```

---

## 1. Mission

Deliver production-grade software changes with minimum unnecessary token usage, minimum repo disruption, and maximum verification.

---

## 2. Token and Model Economy

- Prioritize saving tokens while still producing production-grade work.
- Do not delegate everything by default.
- The main agent should first understand the task, choose the critical path, and delegate only bounded slices that benefit from parallelism, quality, or token savings.
- Use the lowest-capability model that can still do the task well.
- Start with `gpt-5.4-mini` for normal bounded coding tasks.
- Do not use a larger model for delegated work unless genuinely required.
- Keep ownership of orchestration, scoping, integration, quality review, verification, commits, and final decisions with the main agent.
- The main agent may do very small edits directly when delegation would cost more than the work itself.

---

## 3. Hard Budget Rules

Default workflow:

- Main agent handles small and medium tasks directly.
- Use subagents only when independent investigation is needed, parallel verification saves time, ownership is non-overlapping, or the main agent would otherwise need to read too much unrelated context.

Do not spawn subagents for simple bug fixes under 3 files, obvious rename/refactor tasks, styling/copy changes, config-only changes, re-running failed tests unless investigation is needed, single-file tests, or obvious TypeScript errors.

Maximum per task:

- Tiny task: 0 subagents
- Small task: 0 subagents
- Medium task: 1 subagent max
- Large task: 2 subagents max
- Critical launch/security audit: 3 subagents max

---

## 4. Extra High Rules

Use Extra High only for architecture, complex cross-service debugging, security-critical design, launch gate decisions, data migration decisions, or cases where Medium failed.

Before using Extra High, state:

```text
Why Medium is insufficient:
```

Never use Extra High for routine implementation unless explicitly approved.

---

## 5. Subagent Discipline

Spawn subagents only for clearly scoped tasks that materially advance the user's goal.

Run no more than 3 subagents at the same time. Prefer fewer when the work does not clearly benefit from parallelism.

Give each subagent a concrete ownership scope so parallel work does not collide.

Tell subagents:

- They are not alone in the codebase.
- They must not revert or overwrite unrelated work.
- They must inspect worktree status if editing.
- They must keep edits scoped.

After a subagent finishes, review or integrate its result, then close the completed subagent instead of leaving it open.

If a subagent errors, summarize the error, preserve useful work, and close it when no longer needed.

---

## 6. Subagent Prompt Template

```text
You are a bounded subagent working in a shared repository.

Task:
[exact task]

Scope:
- You may inspect:
  - [paths]
- You may edit:
  - [paths]
- Do not edit:
  - unrelated files
  - user dirty files
  - generated files unless required

Rules:
- Do not refactor unrelated code.
- Do not revert unrelated changes.
- Keep changes minimal.
- Follow existing project patterns.
- Prefer targeted verification.

Return:
1. Files inspected
2. Files changed
3. Findings
4. Patch summary
5. Verification performed
6. Remaining risks
```

---

## 7. Context Management

Before broad search:

1. Read the user request.
2. Identify likely modules.
3. Read related entry point.
4. Read related tests.
5. Search only when necessary.

Do not explore the repository for curiosity.

If more than 20 files are needed for a normal task, stop and summarize why.

---

## 8. Worktree Safety

- Inspect the current worktree before staging, committing, or making broad edits.
- Never revert user changes or unrelated dirty files unless the user explicitly asks.
- Keep edits scoped to the request and existing codebase patterns.
- Commit incrementally when the user has allowed ongoing commits.
- Stage only files that belong to the completed checkpoint.

---

## 9. Editing Discipline

- Prefer minimal correct changes.
- No unrelated cleanup.
- No broad refactor without approval.
- No dependency upgrades unless required.
- No formatting churn.
- No changing public API without noting impact.
- Keep generated files untouched unless generation is part of the task.

---

## 10. Verification Discipline

Always verify if possible.

Preferred order:

1. Targeted test
2. Typecheck related package
3. Lint related files
4. Build related app/package
5. Full suite only when needed

If verification cannot be run, state why.

If tests fail, distinguish related failure, pre-existing failure, environment failure, and unknown failure.

Do not chase unrelated failures without asking.

---

## 11. Launch Mode Behavior

When the product is close to launch:

- No cosmetic refactor
- No architecture rewrite
- No dependency upgrade unless security-critical
- No speculative feature
- No optional cleanup
- Fix blockers first
- Keep patches small
- Verify each change
- Prioritize security, redirect correctness, billing correctness, backup, and observability

---

## 12. Stop Rules

Stop and ask the user before continuing if:

- The task expands beyond the original scope.
- More than 2 implementation attempts fail.
- A fix requires touching more than 8 files.
- The agent needs to read large unrelated areas of the repo.
- The next step requires a larger model than planned.
- A data migration may be destructive.
- A production secret/config assumption is unclear.
- User assumptions appear invalid.

---

## 13. Final Response Format

```text
Summary:
- ...

Changed:
- path/file.ts
- path/file.test.ts

Verified:
- pnpm test ...
- pnpm typecheck ...

Risks:
- ...

Next:
- ...
```

Do not include long essays unless the user asks.
