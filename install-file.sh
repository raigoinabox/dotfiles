#!/usr/bin/bash

set -e
set -o pipefail

if [[ $1 ]]
then
	target="~/.$1"
	if [[ -d $1 ]]
	then
		mkdir -p "$target"
	elif [[ -f $1 ]] && ! cmp -s "$1" "$target"
	then
		md5sum "$1" > "$1.md5"
		cp -b "$1" "$target"
		if [[ -e $target~ ]]
		then
			vimdiff "$target" "$target~" && rm "$target~" 
		fi
	fi
else
	echo Usage: $0 file-to-install
fi
