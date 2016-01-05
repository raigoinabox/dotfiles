pwd := $(shell pwd)

install :
	git config --global user.name "Raigo Aljand"
	git config --global user.email raljand@gmail.com
	git config --global credential.helper cache

.PHONY: install
