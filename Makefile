pwd := $(shell pwd)

install :
	git config --global user.name "Raigo Aljand"
	git config --global user.email raljand@gmail.com
	git config --global credential.helper cache
#	git config --global core.excludesfile "$(pwd)/gitignore"

.PHONY: install
