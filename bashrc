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
