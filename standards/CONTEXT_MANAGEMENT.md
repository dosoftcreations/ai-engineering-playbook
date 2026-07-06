# Context Management Standard

Context is a limited engineering resource. AI-assisted work becomes less reliable when the working context grows without discipline.

## Read-order priority

Before broad exploration, follow this order:

1. User request
2. Existing docs and architecture notes
3. Related module entry point
4. Related tests
5. Related types and schema
6. Direct dependencies
7. Broader search only if necessary

Never read the repository out of curiosity.

## Rules

- Start from the user request, the relevant docs, and the narrowest relevant code entry point.
- Avoid loading large unrelated files or generated artifacts unless necessary.
- Keep task scopes bounded and explicit.
- Summarize the current state before starting a new phase of work.

## Avoid context pollution

Do not load:

- Unrelated modules
- Generated files
- Lockfiles unless relevant
- Large logs unless needed
- Historical code unless needed

## Working summary template

For long tasks, maintain a concise working summary:

```text
Goal:
Current decision:
Files touched:
Known risks:
Next step:
```

## When to stop and clarify

Pause and ask for clarification when:

- The scope expands beyond the original request
- The task affects multiple domains with unclear ownership
- The decision is architectural rather than tactical
- The request becomes ambiguous
- More than 40 files are needed
- The original request becomes unclear

## Context budget by task size

| Task size | Maximum files before stopping |
|---|---:|
| Tiny | 3 |
| Small | 8 |
| Medium | 20 |
| Large | 40 |
| Critical | 60 |

If more is needed, summarize what has been learned and ask whether to continue.
