# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:/usr/local/go/bin
GOPATH=$HOME/golabs
PATH=$PATH:$GOPATH/bin

export PATH
export GOPATH
export EDITOR="emacsclient"

case "$MSYSTEM" in
    MINGW64 . ~/.bash.d/.bash_profile.mingw64;;
    MINGW32 . ~/.bash.d/.bash_profile.mingw32;;
    MSYS . ~/.bash.d/.bash_profile.msys;;
esac
