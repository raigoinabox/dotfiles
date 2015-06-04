install : git ackrc
	sudo pacman -S --needed autojump
	./install.sh

.PHONY: install git ackrc

git :
	sudo pacman -S --needed git
	git config --global credential.helper cache

ackrc :
	cp ~/dotfiles/ackrc ~/.ackrc
