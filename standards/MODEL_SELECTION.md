# Model Selection Standard

Model selection should reflect the task, the cost constraints, and the reliability requirements.

## Guiding principles

- Use the smallest model that can complete the task with acceptable quality.
- Use stronger models for tasks that require deeper reasoning or higher precision.
- Keep human review for security-sensitive, mission-critical, or customer-facing changes.
- Avoid treating model choice as a substitute for engineering discipline.

## Practical guidance

- Use lightweight models for targeted edits, formatting, and repetitive transformation tasks.
- Use stronger models for planning, architecture discussion, complex debugging, and review support.
- Record the rationale when a task uses a higher-cost model so the decision remains understandable.
