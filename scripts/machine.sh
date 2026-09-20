#!/bin/bash

set -e

MACHINE="$1"

if [[ "$MACHINE" != "desktop" && "$MACHINE" != "laptop" ]]; then
    echo "Usage: $0 {desktop|laptop}"
    exit 1
fi

# --------------------
# Hyprland
# --------------------

echo "require(\"config.$MACHINE\")" > "$HOME/.config/hypr/machine.lua"


# --------------------
# Waybar
# --------------------

#ln -sfn \
#    "$HOME/dotfiles/waybar/.config/waybar/$MACHINE.jsonc" \
#    "$HOME/.config/waybar/config.jsonc"


# --------------------
# Reload
# --------------------

hyprctl reload

#pkill waybar || true
#waybar &
#disown waybar

echo "Machine configuration set to: $MACHINE"
