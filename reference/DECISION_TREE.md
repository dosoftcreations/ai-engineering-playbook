# Decision Tree

Use this guide when deciding how to approach an AI-assisted engineering task.

## Decision flow

1. Is the task clearly scoped and bounded?
   - Yes: proceed with a focused implementation or review.
   - No: clarify the objective and success criteria first.
2. Does the task affect security, rollout, or data integrity?
   - Yes: add human review and explicit verification.
   - No: continue with a narrower workflow.
3. Is the change likely to be large or architectural?
   - Yes: break it into smaller steps and document the trade-offs.
   - No: keep the implementation incremental.
4. Is rollback or containment feasible?
   - Yes: proceed with operational safeguards.
   - No: pause and re-evaluate the risk.
