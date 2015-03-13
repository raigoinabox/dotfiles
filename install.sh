#!/usr/bin/bash

set -eu

dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vimrc zshrc"

mkdir -p $olddir
mkdir -p "${HOME}/.vim"

for file in $files
do
	mv ~/.$file $olddir
	ln -s $dir/$file ~/.$file
done

sudo pacman -S --needed source-highlight vim-taglist
