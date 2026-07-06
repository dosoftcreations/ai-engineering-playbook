# AI Engineering Curriculum

> A structured training syllabus for software engineers adopting AI-assisted workflows, organized into progressive learning tiers.

---

## Curriculum Overview

| Level | Focus | Target Audience | Primary Goal |
|---|---|---|---|
| **L1: Introduction** | Philosophy & Mindset | All engineers new to AI coding | Understand the "Revenue > Perfection" engineering model |
| **L2: Daily Workflow** | Standards, Coding & Review | Individual developers | Learn to implement features and fix bugs cleanly |
| **L3: Production** | Releases, Incidents & Safety | Tech leads & Ops engineers | Ship software reliably and respond to production issues |
| **L4: Multi-Agent** | Subagent Orchestration | Systems architects | Learn to plan and coordinate multi-agent processes |
| **L5: Advanced** | Architecture & Metrics | Engineering directors & Founders | Measure ROI, establish standards, and scale company-wide |

---

## Level 1: Introduction
### Objectives
Master the core operating principles of AI-assisted engineering. Understand that AI is an execution tool with explicit integration, review, and token costs.

### Required Reading
1. [Core Philosophy](README.md#core-philosophy) — Shift mindset from playground prompt engineering to disciplined software production.
2. [AI Engineering Standard (Philosophy & Ownership)](standards/AI_ENGINEERING_STANDARD.md#1-core-principle) — Establish human accountability, scope boundaries, and cost management.
3. [Anti-Patterns](reference/ANTI_PATTERNS.md) — Identify common pitfalls in AI usage (such as letting the model perform blind refactorings or excessive rewrite loops).

---

## Level 2: Daily Workflow
### Objectives
Learn how to use AI coding assistants for daily tasks (writing code, testing, and reviews) while maintaining a clean git tree and avoiding token runaway.

### Required Reading & Practice
1. [standards/AI_ENGINEERING_STANDARD.md](standards/AI_ENGINEERING_STANDARD.md) — Read the complete guide on task sizes, editing rules, and refactor rules.
2. [standards/MODEL_SELECTION.md](standards/MODEL_SELECTION.md) & [standards/TOKEN_ECONOMY.md](standards/TOKEN_ECONOMY.md) — Routing tasks to the cheapest model tier (Small/Medium/High/Extra-High) and managing file read budgets.
3. [standards/CONTEXT_MANAGEMENT.md](standards/CONTEXT_MANAGEMENT.md) — Keeping context small to prevent model confusion.
4. [playbooks/FEATURE.md](playbooks/FEATURE.md) & [playbooks/BUG_FIX.md](playbooks/BUG_FIX.md) — Bounded implementation of new requirements and minimal bug patches.
5. [checklists/PRE_PR.md](checklists/PRE_PR.md) & [standards/REVIEW_STANDARD.md](standards/REVIEW_STANDARD.md) — Review rules, severity classification (Critical/High/Medium/Low), and finding template.

---

## Level 3: Production Engineering
### Objectives
Ensure safety and stability during launch windows, planned deployments, and production incidents.

### Required Reading & Practice
1. [playbooks/LAUNCH_MODE.md](playbooks/LAUNCH_MODE.md) — Operate under a strict feature freeze and prioritize security and stability blockers over polish.
2. [playbooks/RELEASE.md](playbooks/RELEASE.md) & [checklists/PRE_RELEASE.md](checklists/PRE_RELEASE.md) — Run structured pre-release steps, backups, health checks, and draft release notes.
3. [playbooks/HOTFIX.md](playbooks/HOTFIX.md) & [playbooks/INCIDENT.md](playbooks/INCIDENT.md) — Triage severity, assign roles, contain impact, apply minimal patches, and run retrospectives.

---

## Level 4: Multi-Agent Engineering
### Objectives
Learn when and how to delegate tasks to autonomous subagents, coordinates parallel paths, and review their outputs.

### Required Reading & Practice
1. [standards/SUBAGENT_STANDARD.md](standards/SUBAGENT_STANDARD.md) — Master the subagent budgets by task size and rules for when NOT to delegate.
2. [Agent Patterns](reference/AGENT_PATTERNS.md) — Learn coordinator-agent workflows, independent parallel investigation, and review-verification loops.
3. [Decision Guide: Should I Spawn a Subagent?](reference/DECISION_TREE.md#should-i-spawn-a-subagent) — Step-by-step decision rules for delegation.

---

## Level 5: Advanced Topics
### Objectives
Define custom standards, measure AI engineering metrics, and establish long-term architectures.

### Required Reading
1. [metrics/README.md](metrics/README.md) — Implement quantitative trackers for token efficiency, manual rework rates, and AI ROI.
2. [rfcs/README.md](rfcs/README.md) — Review architectural proposals for routing models, context budgets, and subagent policies.
3. [case-studies/README.md](case-studies/README.md) — Read real-world engineering setups for solo developers, startups, and agencies.
4. [MAINTAINER_GUIDE.md](MAINTAINER_GUIDE.md) — Long-term governance and philosophy guidelines for handbook contributors.
