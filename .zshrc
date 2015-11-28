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

source /usr/share/autojump/autojump.zsh

alias mpv="optirun mpv"
alias mv="mv -i"
alias livestreamer='livestreamer -p "optirun mpv" $(xclip -selection clipboard -o) best'

rem
