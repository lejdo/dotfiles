#!/bin/bash

echo "Installing packages"
yay -S --needed \
    git \
    stow \
    zsh \
    waybar \
    neovim \
    dolphin \
    wofi \
    pipewire \
    wireplumber \
    wl-clipboard


echo "Package installation complete"
