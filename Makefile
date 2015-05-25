all: git
	./install.sh

.PHONY: all git

git:
	sudo pacman -S --needed git
	git config --global credential.helper cache
