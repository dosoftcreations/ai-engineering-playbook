# Security Standard

AI-generated code must be reviewed for security like human-written code.

## High-risk areas

- Authentication
- Authorization
- Refresh tokens
- Password reset
- Admin panels
- Billing webhooks
- Redirect systems
- URL parsing
- File uploads
- Webhooks
- Database migrations
- Secrets
- Logging

## Never ship

Do not ship with:

- Auth bypass
- IDOR
- SQL injection
- XSS affecting users
- SSRF
- Secret leak
- Token leak
- Public admin endpoint
- Payment webhook spoofing
- Disabled/deleted resource still accessible
- Destructive migration without backup

## URL shortener specific rules

For URL shorteners:

- Validate destination URLs.
- Block internal/private IP ranges.
- Consider DNS rebinding.
- Prevent uncontrolled open redirects in auth flows.
- Ensure disabled links do not redirect.
- Ensure deleted links do not redirect.
- Ensure expired links do not redirect.
- Rate-limit link creation.
- Provide abuse disable/report flow.
- Invalidate redirect cache after state changes.

## Logging

Never log:

- Passwords
- Refresh tokens
- Access tokens
- API keys
- Payment secrets
- Full sensitive request bodies

Log:

- Security events
- Admin actions
- Webhook failures
- Auth anomalies
- Rate limit events
