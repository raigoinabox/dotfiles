install : git ackrc
	sudo pacman -S --needed autojump source-highlight vim-taglist
	./install.sh

.PHONY: install git ackrc

git :
	sudo pacman -S --needed git
	git config --global credential.helper cache
	git config --global rerere.enabled true

ackrc :
	cp ~/dotfiles/ackrc ~/.ackrc
