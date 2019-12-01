#!/bin/sh

#zmodload zsh/zprof

# Source global definitions
if [ -f /etc/zshrc ]; then
	. /etc/zshrc
fi

# see https://chr4.org/blog/2014/09/10/conf-dot-d-like-directories-for-zsh-slash-bash-dotfiles/
export SHELL_EXTENSION=zsh
if [ -d $HOME/.zshrc.d ]; then
    for file in $HOME/.zshrc.d/*.$SHELL_EXTENSION; do
        source $file
    done
fi
if [ -d $HOME/.rc.d ]; then
    for file in $HOME/.rc.d/*.sh; do
        source $file
    done
fi

#zprof
