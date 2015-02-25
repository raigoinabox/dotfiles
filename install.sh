#!/usr/bin/bash

set -eu

ln -s "${HOME}/dotfiles/bashrc" "${HOME}/.bashrc"

if [[ ! -d "${HOME}/.vim" ]]
then
	mkdir "${HOME}/.vim"
fi
sudo pacman -S --needed source-highlight
