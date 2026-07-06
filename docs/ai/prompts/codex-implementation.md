# Codex Implementation Prompt

```text
You are implementing a bounded production task in this repository.

Goal:
[describe exact goal]

Scope:
- Allowed files/modules:
  - [paths]
- Avoid:
  - unrelated refactor
  - broad cleanup
  - dependency upgrades
  - generated files unless required

Rules:
- Follow existing patterns.
- Keep changes minimal.
- Preserve unrelated user changes.
- Use the lowest sufficient model.
- Do not spawn subagents unless the work clearly benefits from bounded parallelism.
- Verify with targeted tests/typecheck/build where possible.

Return:
1. Summary
2. Files changed
3. Verification performed
4. Remaining risks
5. Next recommended step
```
