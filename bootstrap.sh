#!/bin/bash

set -e

cd "$(dirname "$0")"

MACHINE="$1"

if [[ "$MACHINE" != "desktop" && "$MACHINE" != "laptop" ]]; then
    echo "Usage: $0 {desktop|laptop}"
    exit 1
fi

# maybe add script to install packages
#
# Maybe make script for stow alone more modular ish

stow zsh
stow kitty
stow nvim
stow hypr

sudo install -Dm644 system/modprobe/alsa.conf /etc/modprobe.d/alsa.conf

./scripts/machine.sh "$MACHINE"

echo "Bootstrap complete for: $MACHINE"
