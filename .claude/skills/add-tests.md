---
name: add-tests
description: Writes pytest tests for existing endpoints or services that lack coverage. Uses the qa-engineer agent.
---

Use the `qa-engineer` agent to write tests for existing code in this FastAPI project.

$ARGUMENTS

The qa-engineer will:
1. Read the specified endpoint, service, or router file
2. Identify what test cases are missing: happy path, 422 validation errors, 404 not found, auth failures, and domain-specific edge cases
3. Write tests using pytest-asyncio and httpx AsyncClient
4. Run the tests and fix any failures before finishing

If no specific file is mentioned, scan the entire `app/routers/` directory and write tests for any endpoint that has no corresponding test file.
