# Solution is :: find vim -exec install-directory or file or something {} \;

pwd := $(shell pwd)
files := bashrc ackrc my.cnf profile zshrc zshenv tmux.conf vim

install : git $(files)
	sudo pacman -S --needed autojump source-highlight vim-taglist

.PHONY: install git $(files)

$(files) :
	find $@ -exec ./install-file.sh {} \;

git :
	git config --global user.name "Raigo Aljand"
	git config --global user.email raljand@gmail.com
	git config --global credential.helper store
	git config --global init.templatedir "$(pwd)/git-template"
	git config --global alias.ctags '!.git/hooks/ctags'
	git config --global core.excludesfile "$(pwd)/gitignore"
