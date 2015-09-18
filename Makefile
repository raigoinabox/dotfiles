cp := cp -b
pwd := $(shell pwd)
files := bashrc ackrc my.cnf profile zshrc zshenv tmux.conf

install : git $(files)
	sudo pacman -S --needed autojump source-highlight vim-taglist
	$(cp) -r vim ~/.vim

.PHONY: install git $(files)

$(files) :
	cp -b $@ ~/.$@

git :
	git config --global user.name "Raigo Aljand"
	git config --global user.email raljand@gmail.com
	git config --global credential.helper store
	git config --global init.templatedir "$(pwd)/git-template"
	git config --global alias.ctags '!.git/hooks/ctags'
	git config --global core.excludesfile "$(pwd)/gitignore"
