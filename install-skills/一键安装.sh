#!/bin/bash
# 把这 9 个 skill 全部装进 ~/.claude/skills/
set -e
DEST="$HOME/.claude/skills"
mkdir -p "$DEST"
HERE="$(cd "$(dirname "$0")" && pwd)"
for d in "$HERE"/*/; do
  name="$(basename "$d")"
  [ -f "$d/SKILL.md" ] || continue
  rm -rf "$DEST/$name"
  cp -R "$d" "$DEST/$name"
  echo "✅ 装好: $name"
done
echo "01-07 共 7 个 skill 已装进 ~/.claude/skills/ —— 重开 Claude 就能用。（00-setup 在仓库根目录，课前单独装；没装的先装它再调 suma-ai-00-setup。）"
