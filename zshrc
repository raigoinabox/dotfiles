# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/raigo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Raigo
if [ "$TERM" == "xterm" ]
then
	eval $(tset -s xterm-256color)
fi
setopt HIST_IGNORE_DUPS
bindkey -e
# TMUX
[[ $- != *i* ]] && return
if [[ -z "$TMUX" ]]
then
	exec tmux
fi
