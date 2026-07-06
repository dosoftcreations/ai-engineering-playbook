# MAINTAINER_GUIDE.md

> Vision, philosophy, and maintainer guidance for the AI Engineering
> Playbook project.

------------------------------------------------------------------------

# Purpose

This repository exists to document **repeatable engineering practices
for AI-assisted software development**.

It is **not** a prompt collection.

It is **not** a model leaderboard.

It is **not** a repository of random AI tips.

The goal is to become a vendor-neutral engineering reference that helps
individuals and teams build, review, ship, and operate production
software with AI.

------------------------------------------------------------------------

# Long-term Vision

Create one of the most practical open-source references for AI-assisted
software engineering.

The repository should remain useful regardless of:

-   AI model
-   AI vendor
-   IDE
-   Programming language
-   Framework

Examples include Codex, Claude Code, Gemini CLI, OpenHands, local
agents, and future tools.

------------------------------------------------------------------------

# Core Philosophy

``` text
Revenue > Perfection
Security > Speed
Stability > Elegance
Small Diffs > Large Refactors
Evidence > Opinion
Verification > Confidence
Quality per Token > Output per Request
```

Engineering discipline matters more than prompt cleverness.

------------------------------------------------------------------------

# Project Principles

## Vendor Neutral

Never optimize documentation around a single AI provider.

## Production First

Prefer practices that work in production.

## Evidence Driven

Whenever possible:

-   measure
-   benchmark
-   compare
-   validate

Do not rely on hype.

## Practical

Every document should help someone build better software.

------------------------------------------------------------------------

# Repository Goals

The repository should eventually include:

-   Standards
-   Playbooks
-   Templates
-   Checklists
-   Examples
-   Decision Trees
-   Case Studies
-   Metrics
-   RFCs

Each document should be independently useful.

------------------------------------------------------------------------

# Repository Structure Philosophy

## standards/

Defines stable engineering rules.

Examples:

-   Model routing
-   Token economy
-   Security
-   Review

## playbooks/

Explains how work is performed.

Examples:

-   Bug fixing
-   Feature development
-   Launch
-   Incident response

## checklists/

Quick operational verification.

Should be concise.

## templates/

Reusable starting points.

## prompts/

Reusable prompt patterns.

Never the primary focus of the repository.

## examples/

Realistic implementations.

## reference/

Background knowledge.

------------------------------------------------------------------------

# Quality Bar

Before merging a document ask:

1.  Is it practical?
2.  Is it vendor-neutral?
3.  Can someone apply it tomorrow?
4.  Is it evidence-based or clearly marked as opinion?
5.  Is it concise enough to read?
6.  Does it duplicate another document?

If "no", improve before merging.

------------------------------------------------------------------------

# Contribution Philosophy

Contributors should improve engineering practice.

Good contributions:

-   Better workflows
-   Better verification
-   Better security guidance
-   Better launch processes
-   Better examples
-   Measured case studies

Poor contributions:

-   AI hype
-   Prompt dumps
-   Tool marketing
-   Large unstructured essays

------------------------------------------------------------------------

# Documentation Style

Use:

-   Short sections
-   Clear headings
-   Bullet lists
-   Decision trees
-   Examples
-   Tables when appropriate

Avoid:

-   Marketing language
-   Buzzwords
-   Excessive adjectives

------------------------------------------------------------------------

# Engineering Writing Rules

Every recommendation should answer:

-   What?
-   Why?
-   Trade-offs?
-   When to use?
-   When NOT to use?

Whenever useful include:

Good example

Bad example

------------------------------------------------------------------------

# Decision Rules

When multiple acceptable solutions exist, prefer:

1.  Safer
2.  Simpler
3.  Easier to verify
4.  Easier to rollback
5.  Easier to maintain

------------------------------------------------------------------------

# Open Source Direction

This project should evolve through:

-   real projects
-   measured experience
-   community discussion
-   production lessons

Avoid designing rules that have never been tested.

------------------------------------------------------------------------

# Maintainer Responsibilities

Maintainers should:

-   protect project scope
-   reject unnecessary complexity
-   preserve consistency
-   encourage evidence
-   prefer practical improvements over theoretical completeness

------------------------------------------------------------------------

# AI Assistant Guidance

If an AI assistant contributes to this repository:

-   Think like a maintainer, not a chatbot.
-   Suggest structural improvements when appropriate.
-   Challenge assumptions respectfully.
-   Do not invent facts.
-   State uncertainty clearly.
-   Prefer incremental improvements.
-   Consider long-term maintainability.

The assistant should ask:

> Should this become part of the engineering methodology?

before introducing new guidance.

------------------------------------------------------------------------

# Versioning

The project should mature gradually.

v0.x

-   experimentation
-   iteration
-   structure changes allowed

v1.0

-   stable structure
-   stable terminology
-   community ready

------------------------------------------------------------------------

# Success Metrics

The project succeeds if it helps teams:

-   reduce unnecessary AI usage
-   improve review quality
-   reduce production defects
-   improve launch confidence
-   establish repeatable engineering workflows

Stars are welcome.

Real-world usefulness matters more.

------------------------------------------------------------------------

# Final Reminder

Do not optimize for writing more documentation.

Optimize for creating documentation that engineers repeatedly return to.

The repository should become a living engineering handbook, not an
archive of prompts.
