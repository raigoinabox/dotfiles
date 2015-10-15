export LESSOPEN="| source-highlight-esc.sh %s"
export LESS=' -Rj.5 '
export EDITOR="vim"
export CVS_RSH="ssh"
export CVSROOT=":ext:raigo.aljand@195.250.189.207:/home/cvs"

if [[ $HOME && -d $HOME/bin ]]
then
	export PATH=$PATH:$HOME/bin
fi
