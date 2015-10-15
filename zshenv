typeset -U path
path=($path ~/.cabal/bin ~/bin)
export LESSOPEN="| source-highlight-esc.sh %s"
export LESS=' -Rj0.5 '
