#!/usr/bin/bash

set -eu

dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vim zshrc"

mkdir -p $olddir

for file in $files
do
	mv ~/.$file $olddir
	ln -s $dir/$file ~/.$file
done

mkdir -p "${HOME}/.vim/backupdir"  "${HOME}/.vim/undodir"

sudo pacman -S --needed source-highlight vim-taglist
