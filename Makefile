error:
	@echo "Please choose one of the following target: install"
	@exit 2

.PHONY: error install git

install : git
	./install.sh

git:
	sudo pacman -S --needed git
	git config --global credential.helper cache
