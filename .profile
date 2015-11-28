export EDITOR="vim"

if [[ $HOME && $PATH && -d $HOME/bin ]]
then
	export PATH=$PATH:$HOME/bin
fi
