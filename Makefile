install : git ackrc
	sudo pacman -S --needed cdargs
	./install.sh

.PHONY: install git ackrc

git :
	sudo pacman -S --needed git
	git config --global credential.helper cache

ackrc :
	ln -s ~/dotfiles/ackrc ~/.ackrc
