# use rsync for vim directory instead of normal cp -rb.
# we need to exclude the directories where i have the undo files and the backup/lock files and cp doesn't have exclude option.
# Though that's easily fixed with when I copy them as templates. Then the templates won't have the backup or undo files.

pwd := $(shell pwd)
files := bashrc ackrc my.cnf profile zshrc zshenv tmux.conf

install : git $(files)
	sudo pacman -S --needed autojump source-highlight vim-taglist

.PHONY: install git $(files)

$(files) :
	cp -b $@ ~/.$@
	[[ -e ~/.$@~ ]] && vimdiff ~/.$@ ~/.$@~

git :
	git config --global user.name "Raigo Aljand"
	git config --global user.email raljand@gmail.com
	git config --global credential.helper store
	git config --global init.templatedir "$(pwd)/git-template"
	git config --global alias.ctags '!.git/hooks/ctags'
	git config --global core.excludesfile "$(pwd)/gitignore"
