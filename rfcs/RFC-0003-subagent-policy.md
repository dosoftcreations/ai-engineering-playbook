# RFC-0003: Subagent Policy

## Summary

This proposal recommends using subagents only when the work is bounded, independent, and easy to verify.

## Motivation

Subagents can improve throughput, but they also increase coordination overhead when used too broadly.

## Proposal

- use subagents for independent investigation or verification work
- avoid them for simple edits or shared-context tasks
- require a clear scope and verification step for every subagent task

## Consequences

This keeps subagent use intentional and manageable.
