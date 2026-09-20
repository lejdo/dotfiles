#!/bin/bash

set -e 

echo "Installing fonts"
yay -S --needed \
    ttf-jetbrains-mono \
    ttf-nerd-fonts-symbols \
    ttf-nerd-fonts-symbols-mono \
    noto-fonts \
    noto-fonts-cjk \
    noto-fonts-emoji

