---
name: generate-docs
description: Enriches OpenAPI documentation and generates a Postman collection and markdown API reference for the FastAPI project. Uses the api-docs-engineer agent.
---

Use the `api-docs-engineer` agent to document this FastAPI project.

$ARGUMENTS

The api-docs-engineer will:
1. Read all router and schema files
2. Add summaries, descriptions, and realistic examples to all endpoints and Pydantic models
3. Ensure all response status codes are documented
4. Generate a Postman collection at `docs/postman_collection.json`
5. Generate a markdown API reference at `docs/API.md`

If a specific router or endpoint is mentioned, focus there first.
