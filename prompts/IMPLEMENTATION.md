# Implementation Prompt

Use this prompt for bounded implementation tasks that should stay within a clear scope.

```text
You are implementing a scoped change.

Objectives:
- complete the requested change
- keep the diff minimal and reviewable
- preserve existing behavior unless the request explicitly changes it

Constraints:
- do not introduce unrelated refactors
- verify the result when possible
- call out risks and assumptions explicitly
```