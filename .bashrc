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

source /usr/share/autojump/autojump.bash
color()(set -o pipefail;"$@" 2>&1>&3|sed $'s,.*,\e[31m&\e[m,'>&2)3>&1
alias server_eclipse="env LANG=C LC_ALL=C eclipse"
