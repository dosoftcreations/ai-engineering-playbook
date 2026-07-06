# AI Engineering Playbook

> Practical playbooks, standards, and workflows for AI-assisted software engineering.

[![Status](https://img.shields.io/badge/status-alpha-orange)](#status)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![AI Engineering](https://img.shields.io/badge/AI-Engineering-black)](#)
[![Vendor Neutral](https://img.shields.io/badge/vendor-neutral-green)](#)

AI coding assistants are becoming part of the engineering team.  
Most teams already use AI to plan, implement, review, test, and ship software.

But many teams still operate AI agents with ad-hoc prompts, inconsistent review rules, unclear model routing, runaway token usage, and weak production discipline.

This repository is a practical playbook for running AI-assisted software engineering like a real engineering system.

---

## This is not a prompt collection

This project is **not**:

- A list of magic prompts
- A collection of AI tricks
- A model leaderboard
- A tool-specific config dump
- A replacement for engineering judgment

This project is:

- Engineering standards
- Agent operating rules
- Model routing guidelines
- Token and context management
- Review workflows
- Launch playbooks
- Production checklists
- Practical templates for AI-assisted teams

---

## Who this is for

This playbook is useful for:

- Solo founders using AI as a dev team
- AI-first startups
- Small engineering teams
- Product teams close to launch
- Agencies handling multiple client repos
- Developers using Codex, Claude Code, Gemini CLI, OpenHands, local agents, or custom AI workflows

---

## Core philosophy

```text
Revenue > Perfection
Security > Speed
Stability > Elegance
Small Diffs > Large Refactors
Production > Playground
Quality per Token > Output per Request
```

AI agents are not free.

Every agent action has cost:

- Token cost
- Time cost
- Review cost
- Context cost
- Integration cost
- Risk cost

The goal is not to use more AI.  
The goal is to ship better software with less waste.

---

## Repository structure

```text
.
├── README.md
├── CONTRIBUTING.md
├── CODE_OF_CONDUCT.md
├── CHANGELOG.md
├── ROADMAP.md
├── SECURITY.md
├── standards/
│   ├── AI_ENGINEERING_STANDARD.md
│   ├── MODEL_SELECTION.md
│   ├── TOKEN_ECONOMY.md
│   ├── CONTEXT_MANAGEMENT.md
│   ├── SUBAGENT_STANDARD.md
│   ├── SECURITY_STANDARD.md
│   └── REVIEW_STANDARD.md
├── playbooks/
│   ├── BUG_FIX.md
│   ├── FEATURE.md
│   ├── LAUNCH_MODE.md
│   ├── RELEASE.md
│   ├── HOTFIX.md
│   └── INCIDENT.md
├── checklists/
│   ├── PRE_RELEASE.md
│   ├── PRODUCTION.md
│   └── SECURITY.md
├── templates/
│   ├── AGENTS.md
│   ├── CLAUDE.md
│   ├── GEMINI.md
│   └── REVIEW.md
├── prompts/
│   ├── implementation.md
│   ├── audit.md
│   ├── launch-gate.md
│   └── architecture.md
└── examples/
    ├── nextjs/
    ├── nestjs/
    └── monorepo/
```

---

## Quick start

Copy the relevant template into your project root:

```text
templates/AGENTS.md  -> AGENTS.md
templates/CLAUDE.md  -> CLAUDE.md
templates/GEMINI.md  -> GEMINI.md
```

Then point your AI agent to the standards:

```text
Read standards/AI_ENGINEERING_STANDARD.md before making changes.
Follow playbooks/LAUNCH_MODE.md if this product is close to production.
Use checklists/SECURITY.md before public release.
```

For Codex-style workflows, start with:

```text
templates/AGENTS.md
```

For pre-launch audits, use:

```text
prompts/audit.md
prompts/launch-gate.md
```

---

## Status

Current version: **v0.1.0-alpha**

This playbook is intentionally alpha. It is based on real AI-heavy software engineering workflows, but it should evolve with measured usage.

The long-term goal is to become a vendor-neutral reference for AI-assisted engineering teams.

---

## Roadmap

See [ROADMAP.md](ROADMAP.md).

---

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

---

## License

MIT.
