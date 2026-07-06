# Incident Response Playbook

Use this playbook when a production issue requires immediate coordination, mitigation, and resolution.

## 1. Incident Priorities

When managing an active incident, prioritize actions in this order:

1. **Protect Users:** Prevent user exposure to errors, incorrect charges, or data corruption.
2. **Protect Data:** Secure user data, backups, and transaction records.
3. **Restore Service:** Bring core systems back to normal operations.
4. **Preserve Evidence:** Retain application logs, database states, and error payloads for investigation.
5. **Communicate Clearly:** Inform stakeholders and users of impact and progress.
6. **Prevent Recurrence:** Perform post-incident cleanup and write preventative rules.

## 2. Incident Workflow

```text
Detect (alerts, logs, user reports)
↓
Triage Severity (determine impact and team roles)
↓
Mitigate (rollback, toggle flags, or apply temporary blocks)
↓
Communicate (status updates to team and users)
↓
Resolve (apply hotfixes and close incident)
↓
Review (run post-incident retrospective)
```

## 3. AI Agent Rules During Incidents

If using AI assistance during an incident:
- **No Refactoring:** Do not clean up code, rewrite structures, or adjust styling.
- **Do Not Speculate:** Base all diagnoses on actual log evidence or code paths.
- **Keep Changes Minimal:** Apply the narrowest fix that restores stability.
- **Preserve Logs:** Do not clear log files, truncate tables, or wipe diagnostics.
- **State Uncertainty:** Explicitly highlight when a cause is assumed rather than verified.
- **Confirm Destructive Actions:** Always seek explicit human approval before running database updates, service restarts, or deployment actions.

## 4. Post-Incident Review Template

After the incident is resolved, the team must complete a retrospective including:

- **Timeline:** Key events, timings from detection to mitigation.
- **Impact:** System downtime, error rates, financial impact, or number of affected users.
- **Root Cause:** Detailed explanation of how the bug occurred and why it slipped past reviews.
- **What Worked:** Successful tooling, quick rollback capability, or clear communication.
- **What Failed:** Delayed alerts, lack of logs, or confusing dependency structures.
- **Preventive Actions:** List of specific tasks to prevent the issue from happening again.
- **Owner:** Named individual responsible for each task.
- **Due Date:** Realistic target completion dates for post-incident tasks.
