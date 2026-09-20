#!/bin/bash

set -e 

# Install yay

if ! command -v yay &> /dev/null; then
    echo "Installing yay"

    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    makepkg -si --noconfirm
    cd -
    rm -rf /tmp/yay
fi

# Install packages
echo "Installing packages"

./scripts/packages/basic.sh
./scripts/packages/fonts.sh

echo "Package installation complete"
