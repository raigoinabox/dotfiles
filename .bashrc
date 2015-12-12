#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Raigo
alias grep='grep --color=auto'
eval $(dircolors -b)
alias watch="watch -d"
alias diff="diff -u"
alias mpv="optirun mpv"
alias mv="mv -i"
alias page='fc -e - | less'
alias livestreamer="livestreamer.sh"

# source /usr/share/autojump/autojump.bash
# color()(set -o pipefail;"$@" 2>&1>&3|sed $'s,.*,\e[31m&\e[m,'>&2)3>&1

reset=$(tput sgr0)
red=$(tput setaf 1)
blue=$(tput setaf 4)
green=$(tput setaf 2)
PS1="\[$red\]$PS1\[$reset\]"

shopt -s checkwinsize

rem
