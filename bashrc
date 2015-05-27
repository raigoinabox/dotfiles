#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Raigo
if [[ "$TERM" == "xterm-256color" &&  -z "$TMUX" ]]
then
	exec tmux
fi

source /usr/share/cdargs/cdargs-bash.sh
