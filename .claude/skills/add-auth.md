---
name: add-auth
description: Adds JWT authentication to a FastAPI project — login, register, token refresh, and protection of specified endpoints. Runs auth-engineer → qa-engineer → pr-creator.
---

Use the `auth-engineer` agent to add JWT authentication to this FastAPI project.

Request: $ARGUMENTS

The auth-engineer will:
1. Read the existing User model and extend it if needed
2. Implement login (POST /auth/login) and register (POST /auth/register) endpoints
3. Create a `get_current_user` dependency using OAuth2PasswordBearer
4. Protect endpoints specified in the request (or all non-public endpoints if not specified)
5. Use bcrypt for password hashing and python-jose for JWT

After auth-engineer finishes, run qa-engineer to write auth tests, then pr-creator to open the PR.

Do not ask clarifying questions. Make reasonable assumptions:
- Access token expiry: 30 minutes
- Refresh token expiry: 7 days
- Secret key from environment variable `SECRET_KEY`
- Algorithm: HS256
