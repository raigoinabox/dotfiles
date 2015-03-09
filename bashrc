#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Raigo
if [ "$TERM" == "xterm" ]
then
	eval $(tset -s xterm-256color)
fi
if [[ -z "$TMUX" ]]
then
	exec tmux
fi
