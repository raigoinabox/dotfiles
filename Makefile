pwd := $(shell pwd)

install : git ackrc
	sudo pacman -S --needed autojump source-highlight vim-taglist
	./install.sh

.PHONY: install git ackrc

git :
	git config --global user.name "Raigo Aljand"
	git config --global user.email raljand@gmail.com
	git config --global credential.helper store
	git config --global init.templatedir "$(pwd)/git-template"
	git config --global alias.ctags '!.git/hooks/ctags'
	git config --global core.excludesfile "$(pwd)/gitignore"

ackrc :
	mv ~/.ackrc "$(pwd)/old/ackrc"
	cp "$(pwd)/ackrc" ~/.ackrc

mysql:
	cp -b my.cnf ~/.my.cnf
