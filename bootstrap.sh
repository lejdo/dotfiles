#!/bin/bash

set -e

cd "$(dirname "$0")"

MACHINE="$1"

if [[ "$MACHINE" != "desktop" && "$MACHINE" != "laptop" ]]; then
    echo "Usage: $0 {desktop|laptop}"
    exit 1
fi

./scripts/install_packages.sh

./scripts/machine.sh "$MACHINE"

# Maybe make script for stow alone more modular ish

stow zsh
stow kitty
stow nvim
stow hypr


echo "Bootstrap complete for: $MACHINE"
