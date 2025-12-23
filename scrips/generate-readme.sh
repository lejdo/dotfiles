#!/usr/bin/env bash

README="README.md"
START="<!-- AUTO:START -->"
END="<!-- AUTO:END -->"

# Collect stow paackages
PACKAGES=$(find . -maxdepth 1 -type d \
  ! -name "." \
  ! -name ".git" \
  ! -name "scripts" \
  -printf "%f\n" | sort)

AUTO_CONTENT="## Managed packages (GNU Stow)\n\n"
for pkg in $PACKAGES; do
  AUTO_CONTENT+="- $pkg\n"
done

# Replace auto section
awk -v start="$START" -v end="$END" -v content="$AUTO_CONTENT" '
  $0 == start { print; print content; skip=1; next }
  $0 == end   { skip=0 }
  !skip
' "$README" > "$README.tmp"

mv "$README.tmp" "$README"
