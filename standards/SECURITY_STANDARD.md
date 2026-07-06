# Security Standard

Security work should be treated as a default part of engineering, not as an afterthought.

## Baseline expectations

- Do not introduce secrets into code, logs, or examples.
- Validate untrusted input and external URLs.
- Preserve least-privilege access and explicit authorization checks.
- Keep authentication, credentials, and token handling under review.
- Prefer rollback-friendly changes in production systems.

## Review checklist

- Are credentials or secrets exposed?
- Are permissions and authorization explicit?
- Are external requests validated?
- Are destructive actions protected?
- Is rollback possible if the change fails?
