#!/usr/bin/env bash
# Script to automatically generate a up to date README.md with packages and descriptions
# Used as git hook


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
  # Try to get pacman description
  desc=$(pacman -Si "$pkg" 2>/dev/null | grep -E "^Description" | cut -d':' -f2- | xargs || true)

  # Fallback if empty
  if [[ -z "$desc" ]]; then
    desc="Configuration for $pkg"
  fi

  AUTO_CONTENT+="- $pkg: $desc\n"
done

# Replace auto section
awk -v start="$START" -v end="$END" -v content="$AUTO_CONTENT" '
  $0 == start { print; print content; skip=1; next }
  $0 == end   { skip=0 }
  !skip
' "$README" > "$README.tmp"

mv "$README.tmp" "$README"
