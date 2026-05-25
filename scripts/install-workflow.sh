#!/usr/bin/env bash
set -euo pipefail

TEMPLATE_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_ROOT="$(pwd)"

mkdir -p "$TARGET_ROOT/.codex/agents"
mkdir -p "$TARGET_ROOT/.codex/skills"
mkdir -p "$TARGET_ROOT/docs"

copy_file() {
  local source="$1"
  local target="$2"

  if [ -f "$target" ]; then
    local backup="$target.bak.$(date +%Y%m%d%H%M%S)"
    cp "$target" "$backup"
    echo "Backed up existing file: $backup"
  fi

  cp "$source" "$target"
  echo "Installed: $target"
}

copy_file "$TEMPLATE_ROOT/AGENTS.md" "$TARGET_ROOT/AGENTS.md"

cp -R "$TEMPLATE_ROOT/.codex/agents/." "$TARGET_ROOT/.codex/agents/"
cp -R "$TEMPLATE_ROOT/.codex/skills/." "$TARGET_ROOT/.codex/skills/"
cp -R "$TEMPLATE_ROOT/docs/." "$TARGET_ROOT/docs/"

if [ ! -f "$TARGET_ROOT/.codex/config.toml" ]; then
  cp "$TEMPLATE_ROOT/.codex/config.toml.example" "$TARGET_ROOT/.codex/config.toml.example"
  echo "Installed: .codex/config.toml.example"
else
  cp "$TEMPLATE_ROOT/.codex/config.toml.example" "$TARGET_ROOT/.codex/config.toml.example"
  echo "Existing .codex/config.toml preserved. Added .codex/config.toml.example"
fi

echo ""
echo "Salesforce Codex MCP workflow template installed."
echo "Next steps:"
echo "1. Edit AGENTS.md and replace placeholders."
echo "2. Edit .codex/config.toml or .codex/config.toml.example with your org alias."
echo "3. Start with: Use salesforce-architect. Analyze this ticket in PLAN MODE."
