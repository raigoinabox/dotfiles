install : git ackrc
	sudo pacman -S --needed autojump source-highlight vim-taglist
	./install.sh

.PHONY: install git ackrc

git :
	sudo pacman -S --needed git
	git config --global user.name "Raigo Aljand"
	git config --global user.email raljand@gmail.com
	git config --global credential.helper store
	git config --global init.templatedir "$(shell pwd)/git-template"
	git config --global alias.ctags '!.git/hooks/ctags'
	git config --global core.excludesfile "$(shell pwd)/gitignore"

ackrc :
	cp ~/dotfiles/ackrc ~/.ackrc
