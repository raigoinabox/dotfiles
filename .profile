export EDITOR="vim"
export LESS="-iR"

if [[ $HOME && $PATH && -d $HOME/bin ]]
then
	export PATH=$PATH:$HOME/bin
fi
