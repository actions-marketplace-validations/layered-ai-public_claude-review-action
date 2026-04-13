#!/bin/sh
set -e

base_url="https://raw.githubusercontent.com/layered-ai-public/claude-review-action/main/commands"
dest="$HOME/.claude/commands"
mkdir -p "$dest"

curl -fsSL "$base_url/review.md" -o "$dest/review.md"
curl -fsSL "$base_url/review-and-fix.md" -o "$dest/review-and-fix.md"

echo "Installed to $dest"
