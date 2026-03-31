# Security Policy

## Supported versions

| Version | Supported |
|---|---|
| Latest (main) | ✅ |
| Older tags | ❌ |

## Reporting a vulnerability

If you find a security issue in this project — for example, an agent that generates code with a hardcoded secret, an SQL injection risk, or an auth implementation flaw — please report it privately before opening a public issue.

**Do not open a public GitHub issue for security vulnerabilities.**

Report via: [GitHub private vulnerability reporting](https://github.com/uzairkhatri/fastapi-ai-team/security/advisories/new)

Include:
- What the agent or skill produces that is insecure
- A minimal reproduction (the prompt you used)
- The impact if the generated code were used in production

We aim to respond within 72 hours and will credit reporters in the fix.

## Scope

This project ships agent prompt files, not application code. Security issues include:

- An agent generating code with hardcoded credentials or secrets
- An agent bypassing its own constraints in a way that produces unsafe output
- An agent producing code vulnerable to OWASP Top 10 issues (SQLi, XSS, IDOR, etc.)
- The install script (`scripts/install.sh`) doing something unintended

Out of scope: vulnerabilities in Claude Code, Cursor, or Anthropic's platform itself — report those to Anthropic directly.
