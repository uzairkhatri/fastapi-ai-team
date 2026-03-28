<div align="center">

![Skills](https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=160&section=header&text=Skills&fontSize=50&fontColor=fff&animation=twinkling&fontAlignY=45)

**7 slash commands that chain agents into complete workflows. One command, multiple agents, one PR.**

[![Back to main](https://img.shields.io/badge/←%20Back%20to%20main-README-5C4EE5)](../README.md)
[![Skills](https://img.shields.io/badge/Skills-7-blue)](#skills)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen)](https://github.com/uzairkhatri/fastapi-ai-team/issues/new)

</div>

---

## Skills

| Skill | Command | Agents it runs | Output |
|---|---|---|---|
| Orchestrate | `/orchestrate <description>` | Full chain | Endpoint + migration + tests + PR |
| Add Auth | `/add-auth` | auth-engineer → qa-engineer → pr-creator | JWT auth stack + tests + PR |
| Review PR | `/review-pr` | code-reviewer + security-engineer | Structured audit report |
| Audit Security | `/audit-security` | security-engineer | OWASP report, prioritized |
| Optimize | `/optimize <description>` | performance-engineer | Bottleneck report + fix suggestions |
| Generate Docs | `/generate-docs` | api-docs-engineer | Enriched OpenAPI + Postman collection |
| Add Tests | `/add-tests <description>` | qa-engineer | Tests written, run, and passing |

---

## Skill details

### `/orchestrate`

The full-stack skill. Takes a plain-English feature description and runs the entire chain from planning to PR.

```
/orchestrate Add a notifications system — users get notified when someone likes their post
/orchestrate Add a follow system — users can follow each other
/orchestrate Add soft delete to posts with a deleted_at column
/orchestrate Add a Stripe webhook endpoint for payment events
/orchestrate Add a [resource] with [fields and relationships]
```

**Chain:** `orchestrator` → `backend-engineer` → `db-engineer` → `qa-engineer` → `pr-creator`

**Output:** Router, service, schema, model, migration, tests, PR — all following your existing project patterns.

---

### `/add-auth`

Adds a full JWT authentication stack to an existing FastAPI project.

```
/add-auth
```

**Chain:** `auth-engineer` → `qa-engineer` → `pr-creator`

**Output:**
- `POST /auth/register` — bcrypt password hashing, returns user (no password hash)
- `POST /auth/login` — OAuth2 password flow, returns access + refresh tokens
- `POST /auth/refresh` — refresh token rotation
- Protected route dependency (`get_current_user`)
- Auth tests written and passing
- PR opened

---

### `/review-pr`

Run before opening any PR. Combines architecture review with security audit.

```
/review-pr
```

**Chain:** `code-reviewer` + `security-engineer` (parallel)

**Output:** Structured report — blockers first, then suggestions. Security findings classified Critical / High / Medium / Low. Nothing auto-fixed.

---

### `/audit-security`

Full OWASP Top 10 scan. Read-only, prioritized findings.

```
/audit-security
```

**Agent:** `security-engineer`

**Checks:** Injection risks, broken auth, secrets exposure, CORS misconfiguration, missing rate limiting, insecure deserialization, and more.

---

### `/optimize`

Find real performance bottlenecks. No speculative optimization.

```
/optimize
/optimize The GET /feed endpoint feels slow
/optimize Check all endpoints that hit the posts table
```

**Agent:** `performance-engineer`

**Output:** N+1 queries identified by file + line, missing indexes, unneeded eager loading, caching opportunities. Every finding explained before a fix is suggested.

---

### `/generate-docs`

Enrich your OpenAPI docs and export a Postman collection.

```
/generate-docs
```

**Agent:** `api-docs-engineer`

**Output:** Route descriptions, realistic request/response examples, proper tags, exportable Postman collection. No placeholder data (`"string"`, `123`) — every example is something a real client would send.

---

### `/add-tests`

Write tests for existing endpoints that have no coverage.

```
/add-tests
/add-tests Write tests for all endpoints in app/routers/ with no test coverage
/add-tests Cover the auth endpoints — login, register, refresh
```

**Agent:** `qa-engineer`

**Output:** Tests written against a real test database, run via pytest, failures fixed before handoff. No mocking.

---

## Quick reference

```
/orchestrate Add a [feature description]
/add-auth
/review-pr
/audit-security
/optimize [optional: describe the slow area]
/generate-docs
/add-tests [optional: describe what to cover]
```

---

## Add your own skill

Each skill is a single markdown file that defines which agents to call and in what order. Copy any existing skill file as a template and open a PR.

**Request a skill** → [open an issue](https://github.com/uzairkhatri/fastapi-ai-team/issues/new)

---

<div align="center">

[⭐ Star the repo](https://github.com/uzairkhatri/fastapi-ai-team) • [← Back to main README](../README.md)

![footer](https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=80&section=footer)

</div>
