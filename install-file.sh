#!/usr/bin/bash

set -e
set -o pipefail

if [[ $1 ]] && ! cmp "$1" "~/.$1"
then
	cp -b $1 ~/.$1
	if [[ -e ~/.$1~ ]]
	then
		vimdiff ~/.$1 ~/.$1~ && rm ~/.$1~ 
	fi
else
	echo Usage: $0 file-to-install
fi
