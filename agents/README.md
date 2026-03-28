<div align="center">

![Agents](https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=160&section=header&text=The%20Team&fontSize=50&fontColor=fff&animation=twinkling&fontAlignY=45)

**11 specialized agents. Each one knows exactly what it owns — and what it must never touch.**

[![Back to main](https://img.shields.io/badge/←%20Back%20to%20main-README-5C4EE5)](../README.md)
[![Agents](https://img.shields.io/badge/Agents-11-orange)](#agents)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen)](https://github.com/uzairkhatri/fastapi-ai-team/issues/new?template=new-agent-request.yml)

</div>

---

## Agents

| Agent | Owns | Hard Rules |
|---|---|---|
| [orchestrator](#orchestrator) | Intent → plan → delegation | Never writes code. Only coordinates. |
| [backend-engineer](#backend-engineer) | Routes, Pydantic schemas, service logic | No business logic in routers. All I/O async. |
| [db-engineer](#db-engineer) | SQLAlchemy 2.0 models, Alembic migrations | Runs migration every time. Every FK has `ondelete`. |
| [qa-engineer](#qa-engineer) | pytest + httpx tests, runs them, fixes failures | Real test DB only. Fixes failures before handoff. |
| [pr-creator](#pr-creator) | Branch, commit, GitHub PR | Never touches `main`. Structured PR every time. |
| [auth-engineer](#auth-engineer) | JWT, OAuth2, bcrypt, protected routes | bcrypt only. Secrets from env. Never returns hashed password. |
| [code-reviewer](#code-reviewer) | Architecture, N+1, async correctness | Read-only. Blockers vs suggestions. Never vague. |
| [migration-manager](#migration-manager) | Alembic history, rollback, conflict resolution | Never runs blind. Warns on data loss. |
| [api-docs-engineer](#api-docs-engineer) | OpenAPI descriptions, examples, Postman export | Never changes logic. Realistic examples only. |
| [security-engineer](#security-engineer) | OWASP Top 10, secrets, broken auth, injection | Read-only. Critical/High/Medium/Low classification. |
| [performance-engineer](#performance-engineer) | N+1 queries, indexes, caching, pagination | Explains problem before fix. Real bottlenecks only. |

---

## Agent details

### orchestrator

> *"I read your entire codebase before writing a single line. Your patterns, not mine."*

**Owns:** Intent → plan → delegation
**Never:** Writes code, edits files, or makes assumptions without reading the project first

Reads your full project structure, identifies existing patterns, and builds an execution plan. Delegates to the right agents in the right order. If the plan changes mid-execution, it re-plans — it doesn't improvise.

**When to use:**
```
/orchestrate Add a notifications system — users get notified on new likes
/orchestrate Add soft delete to posts with a deleted_at column
/orchestrate Add a Stripe webhook endpoint for payment events
```

---

### backend-engineer

> *"I follow your patterns. If your project uses service layers, I use service layers."*

**Owns:** Routers, Pydantic schemas, service logic, dependency injection
**Never:** Puts business logic in routers, uses sync I/O, touches migrations

Reads existing routers before writing new ones. Matches your naming conventions, folder structure, and patterns. All route handlers are async. Service layer always separated from router layer.

---

### db-engineer

> *"I never skip the migration. Not once."*

**Owns:** SQLAlchemy 2.0 models, Alembic migrations, relationships, query logic
**Never:** Skips `alembic revision`, uses raw SQL, creates FKs without `ondelete`

Creates models with proper relationships, generates migrations via `alembic revision --autogenerate`, and verifies the migration applies cleanly. Every foreign key has an explicit `ondelete` policy.

---

### qa-engineer

> *"I run pytest and fix failures before I hand off. You never see a broken test."*

**Owns:** Test files, pytest execution, failure diagnosis and fixes
**Never:** Mocks the database, skips test runs, hands off with failing tests

Uses a real test database via `conftest.py` fixtures. Runs the full test suite after writing new tests. If tests fail, it fixes them — it does not hand off a broken state.

---

### pr-creator

> *"I open the PR on a clean branch. I never touch main."*

**Owns:** Git branch creation, commit, GitHub PR with structured description
**Never:** Commits to `main`, stages unrelated files, uses vague commit messages

Creates a feature branch, stages only the relevant files, writes a structured commit message, and opens a PR with a description that includes a summary, what changed, and a test plan.

---

### auth-engineer

> *"bcrypt only. Secrets from env. The hashed password never leaves the database."*

**Owns:** JWT access/refresh tokens, OAuth2 password flow, bcrypt hashing, route guards
**Never:** Uses sha256 for passwords, hardcodes secrets, returns hashed passwords in responses

Implements the full auth stack: register, login, token refresh, logout, and protected route decorators. Secrets always read from environment variables. Password hashes never appear in API responses.

---

### code-reviewer

> *"I audit. I never modify. Every finding is a blocker or a suggestion — never vague."*

**Owns:** Architecture review, N+1 detection, async correctness, security surface
**Never:** Edits code, auto-fixes, gives unactionable feedback

Reads the codebase and produces a structured report: blockers first, then suggestions. Every finding includes the file, line, and a concrete fix recommendation.

---

### migration-manager

> *"I never run a migration blind. If there's data loss risk, I tell you first."*

**Owns:** Alembic history, migration generation, rollback, conflict resolution
**Never:** Runs `alembic upgrade` without reviewing the migration, ignores conflicts

Reviews migration history, detects conflicts, and warns on destructive operations (column drops, type changes) before running anything.

---

### api-docs-engineer

> *"Every example I write is something a real API client would actually send."*

**Owns:** OpenAPI descriptions, `response_model` examples, Postman collection export
**Never:** Changes business logic, uses placeholder data like `"string"` or `123`

Enriches your existing routes with descriptions, realistic request/response examples, and proper tags. Exports a Postman collection you can share with your team.

---

### security-engineer

> *"Read-only. Always. Critical / High / Medium / Low. No false positives."*

**Owns:** OWASP Top 10 audit, secrets exposure, broken auth, injection risks, CORS, rate limiting
**Never:** Modifies code, reports false positives, gives unclassified findings

Produces a prioritized security report. Every finding has a severity, a description, and a remediation step. Nothing is auto-fixed — all changes go through your review.

---

### performance-engineer

> *"I explain the problem before suggesting the fix. I never optimize what isn't slow."*

**Owns:** N+1 query detection, missing indexes, unneeded eager loading, caching opportunities
**Never:** Optimizes prematurely, changes code without explaining the bottleneck first

Profiles your query patterns, identifies real bottlenecks with evidence, and suggests targeted fixes. No speculative optimization.

---

## Add your own agent

Each agent is a single markdown file. Copy `backend-engineer.md`, define what it owns and what it must never do, and open a PR.

**Request an agent** → [open an issue](https://github.com/uzairkhatri/fastapi-ai-team/issues/new?template=new-agent-request.yml)

---

<div align="center">

[⭐ Star the repo](https://github.com/uzairkhatri/fastapi-ai-team) • [← Back to main README](../README.md)

![footer](https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=6,11,20&height=80&section=footer)

</div>
