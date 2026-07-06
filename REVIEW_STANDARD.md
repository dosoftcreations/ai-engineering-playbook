# Context Management Standard

Context is a limited engineering resource.

## Read order

Before broad exploration:

1. User request
2. Existing docs
3. Related module entry point
4. Related tests
5. Related types/schema
6. Direct dependencies
7. Broader search only if necessary

## Working summary

For long tasks, maintain a short summary:

```text
Goal:
Current decision:
Files touched:
Known risks:
Next step:
```

## Avoid context pollution

Do not load:

- Unrelated modules
- Generated files
- Lockfiles unless relevant
- Large logs unless needed
- Historical code unless needed

## When context is too large

Stop and ask if:

- More than 40 files are needed.
- Multiple domains are involved.
- The task becomes architectural.
- The original request becomes ambiguous.
