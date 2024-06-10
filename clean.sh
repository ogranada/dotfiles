#!/bin/bash

if ! command -v stow &> /dev/null
then
  MSG="Stow not installed. Please install it before run this program."
  echo -e "ERROR: $MSG"
  exit -1;
else
  stow --version
fi

stow -D config
stow -D tmux
stow -D git
stow -D lua
stow -D env
stow -D bash
stow -D zsh
echo "Dotfiles cleaned."

