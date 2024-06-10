#!/bin/bash

if ! command -v stow &> /dev/null
then
  MSG="Stow not installed. Please install it before run this program."
  echo -e "ERROR: $MSG"
  exit -1;
else
  stow --version
fi

stow --target="$HOME" config
stow --target="$HOME" tmux
stow --target="$HOME" git
stow --target="$HOME" lua
stow --target="$HOME" env
stow --target="$HOME" bash
stow --target="$HOME" zsh
echo "Dotfiles ready."

