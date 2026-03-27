# Example: Building a Blog API

This walkthrough shows FastAPI AI Team building a complete blog API from scratch — posts, comments, auth, docs, and a security audit.

---

## Step 1 — Ship the posts feature

```
/orchestrate Add a blog posts endpoint — users can create, list, and delete their own posts
```

**What runs:** orchestrator → backend-engineer → db-engineer → qa-engineer → pr-creator

**What gets built:**
- `app/schemas/post.py` — PostCreate, PostResponse, PostListResponse
- `app/services/post_service.py` — create_post, list_posts, delete_post
- `app/routers/posts.py` — POST /posts, GET /posts, DELETE /posts/{id}
- `app/models/post.py` — Post model with user FK
- Alembic migration
- `tests/test_posts.py` — 5 tests, all passing
- PR opened

---

## Step 2 — Add comments

```
/orchestrate Add a comments endpoint — users can comment on posts
```

**What gets built:**
- Comment model with FK to posts and users
- POST /posts/{id}/comments, GET /posts/{id}/comments
- Tests for 201, 401, 404
- PR opened

---

## Step 3 — Add authentication

```
/add-auth
```

**What runs:** auth-engineer → qa-engineer → pr-creator

**What gets built:**
- POST /auth/register, POST /auth/login (returns JWT)
- `get_current_user` dependency
- Posts and comments endpoints protected
- Auth tests (register, login, invalid token)
- PR opened

---

## Step 4 — Security audit

```
/audit-security
```

**What runs:** security-engineer (read-only)

**Sample output:**
```
### High
- app/core/config.py:8 — SECRET_KEY defaults to "changeme"
  Fix: raise ValueError if SECRET_KEY not set in environment

### Passed
- No hardcoded credentials in source
- Passwords hashed with bcrypt
- No raw SQL queries
- CORS not set to wildcard
```

---

## Step 5 — Docs + Postman

```
/generate-docs
```

**What gets built:**
- OpenAPI descriptions on all endpoints
- Realistic request/response examples
- `docs/postman_collection.json` — ready to import

---

## Result

A complete, tested, documented, security-audited blog API — built from 5 commands.
