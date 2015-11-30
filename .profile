export EDITOR="vim"
export CVS_RSH="ssh"
export CVSROOT=":ext:raigo.aljand@195.250.189.207:/home/cvs"

if [[ $HOME && $PATH && -d $HOME/bin ]]
then
	export PATH=$PATH:$HOME/bin
fi

export prelive="raigo.aljand@195.250.189.207"
