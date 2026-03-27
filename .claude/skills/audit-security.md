---
name: audit-security
description: Runs a full security audit on the FastAPI project using the security-engineer agent. Checks OWASP Top 10, secrets exposure, auth patterns, CORS, and input validation.
---

Use the `security-engineer` agent to run a full security audit on this FastAPI project.

$ARGUMENTS

The security-engineer will:
1. Scan the entire codebase — routers, services, models, config, and dependencies
2. Check for: hardcoded secrets, broken auth, injection risks, CORS misconfiguration, missing rate limiting, and unvalidated input
3. Classify every finding as Critical / High / Medium / Low
4. Provide exact file locations and fix instructions for each issue

Do not modify any code. This is an audit-only operation.
