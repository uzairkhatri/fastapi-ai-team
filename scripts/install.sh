#!/bin/bash

set -e

REPO="https://github.com/uzairkhatri/fastapi-ai-team"
TMP="/tmp/fastapi-ai-team"

echo "FastAPI AI Team — installer"
echo "=============================="

# Detect tool
TOOL=""
if [ -d ".claude" ] || command -v claude &> /dev/null; then
  TOOL="claude"
elif [ -d ".cursor" ]; then
  TOOL="cursor"
else
  TOOL="claude"  # default
fi

# Allow override
if [ "$1" == "--cursor" ]; then TOOL="cursor"; fi
if [ "$1" == "--claude" ]; then TOOL="claude"; fi

echo "Target: $TOOL"

# Clone
rm -rf "$TMP"
git clone --depth=1 "$REPO" "$TMP" --quiet

# Install
if [ "$TOOL" == "cursor" ]; then
  mkdir -p .cursor/agents
  cp "$TMP/.cursor/agents/"* .cursor/agents/
  echo "Installed to .cursor/agents/"
else
  mkdir -p .claude/agents .claude/skills
  cp "$TMP/.claude/agents/"* .claude/agents/
  cp "$TMP/.claude/skills/"* .claude/skills/
  echo "Installed to .claude/agents/ and .claude/skills/"
fi

rm -rf "$TMP"
echo ""
echo "Done. Try: /orchestrate Add a [resource] endpoint"
