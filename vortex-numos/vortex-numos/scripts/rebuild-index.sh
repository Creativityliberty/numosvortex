#!/bin/bash
# Rebuild INDEX.md from agent frontmatter — VORTEX NUMOS
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
AGENTS_DIR="$PROJECT_ROOT/agents"
INDEX_FILE="$AGENTS_DIR/INDEX.md"

REMINDER_TEXT="---

**REMEMBER**: VORTEX NUMOS apprend à chaque session. Mettre à jour \`references/learned-patterns.md\` régulièrement."

cat > "$INDEX_FILE" << 'HEADER'
# Agent Index — VORTEX NUMOS

## Agents Disponibles

| Agent | Symbole | Description | Triggers |
|-------|---------|-------------|----------|
HEADER

for file in "$AGENTS_DIR"/*.md; do
    filename=$(basename "$file")
    if [ "$filename" = "INDEX.md" ]; then continue; fi
    name=$(sed -n '/^---$/,/^---$/p' "$file" | grep "^name:" | sed 's/name: *//')
    emoji=$(sed -n '/^---$/,/^---$/p' "$file" | grep "^emoji:" | sed 's/emoji: *//')
    description=$(sed -n '/^---$/,/^---$/p' "$file" | grep "^description:" | sed 's/description: *//')
    triggers=$(sed -n '/^---$/,/^---$/p' "$file" | grep "^triggers:" | sed 's/triggers: *//')
    if [ -n "$name" ]; then
        echo "| [$name]($filename) | $emoji | $description | $triggers |" >> "$INDEX_FILE"
    fi
    if ! grep -q "VORTEX NUMOS apprend" "$file"; then
        echo "" >> "$file"
        echo "$REMINDER_TEXT" >> "$file"
    fi
done

echo "" >> "$INDEX_FILE"
echo "_Dernière mise à jour : $(date '+%Y-%m-%d %H:%M')_" >> "$INDEX_FILE"
echo "✅ INDEX.md rebuilt"
