pwd := $(shell pwd)

install : git
	sudo pacman -S --needed autojump source-highlight vim-taglist

.PHONY: install git

git :
	git config --global user.name "Raigo Aljand"
	git config --global user.email raljand@gmail.com
	git config --global credential.helper store
	git config --global core.excludesfile "$(pwd)/gitignore"
