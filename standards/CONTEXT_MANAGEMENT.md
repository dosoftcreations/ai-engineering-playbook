# Context Management Standard

Context is a limited engineering resource. AI-assisted work becomes less reliable when the working context grows without discipline.

## Rules

- Start from the user request, the relevant docs, and the narrowest relevant code entry point.
- Avoid loading large unrelated files or generated artifacts unless necessary.
- Keep task scopes bounded and explicit.
- Summarize the current state before starting a new phase of work.

## Working summary template

```text
Goal:
Current decision:
Files touched:
Known risks:
Next step:
```

## When to stop and clarify

Pause and ask for clarification when:

- the scope expands beyond the original request
- the task affects multiple domains with unclear ownership
- the decision is architectural rather than tactical
- the request becomes ambiguous
