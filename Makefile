pwd := $(shell pwd)

install : git
	sudo pacman -S --needed autojump vim-taglist

.PHONY: install git

git :
	git config --global user.name "Raigo Aljand"
	git config --global user.email raljand@gmail.com
	git config --global credential.helper cache
#	git config --global core.excludesfile "$(pwd)/gitignore"
