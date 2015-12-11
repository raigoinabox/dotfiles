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

setopt HIST_IGNORE_DUPS
bindkey -e

eval $(thefuck --alias)
source /usr/share/autojump/autojump.zsh

alias mpv="optirun mpv"
alias mv="mv -i"
alias page='fc -e - | less'
alias livestreamer="livestreamer.sh"

rem
