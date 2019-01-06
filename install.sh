#! /usr/bin/env bash

DOTFILES="/home/$(whoami)/.dotfiles/"

if command -v stow >/dev/null 2>&1; then
    echo 'Stow is not available, please install it'
    echo 'https://www.gnu.org/software/stow/'
    exit 1
fi

# Updates the dotfiles
git --git-dir=.git -C "${DOTFILES}" pull

stow bash
stow fish
stow git
stow config
stow xorg
stow xmonad

exit 0
