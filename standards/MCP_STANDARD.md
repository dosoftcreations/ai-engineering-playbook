# MCP Standard

Model Context Protocol (MCP) tools should be used as disciplined engineering aids, not as a substitute for judgment.

## Expectations

- Use MCP tools only when they provide a clear and relevant capability.
- Keep the scope of tool use explicit and bounded.
- Validate tool output before relying on it in implementation or release work.
- Avoid combining too many independent tools in a single workflow without clear coordination.

## Guardrails

- Do not assume tool output is correct without review.
- Do not expose secrets or sensitive data through tool usage.
- Prefer minimal tool usage when the task can be handled directly.
- Document any assumptions introduced by tool-mediated workflows.
