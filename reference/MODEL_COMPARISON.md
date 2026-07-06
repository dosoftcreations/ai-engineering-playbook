# Model Comparison

Different models are appropriate for different tasks.

## Practical guidance

- Lightweight models are often sufficient for targeted editing, formatting, and simple transformations.
- Stronger models are better suited for planning, architecture discussion, deep debugging, and careful review support.
- The best choice depends on reliability needs, token budget, and task complexity.

## Decision rules

- Use the smallest model that can complete the task safely.
- Escalate to a stronger model when ambiguity, risk, or reasoning depth increases.
- Preserve human review for production-critical work.
