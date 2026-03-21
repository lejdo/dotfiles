cd "$(dirname "$0")"

stow zsh
stow kitty
stow nvim
stow hypr

sudo install -Dm644 system/modprobe/alsa.conf /etc/modprobe.d/alsa.conf
