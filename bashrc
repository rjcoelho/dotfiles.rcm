#!/bin/sh

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# see https://chr4.org/blog/2014/09/10/conf-dot-d-like-directories-for-zsh-slash-bash-dotfiles/
export SHELL_EXTENSION=bash
if [ -d $HOME/.bashrc.d ]; then
    for file in $HOME/.bashrc.d/*.$SHELL_EXTENSION; do
        source $file
    done
fi
if [ -d $HOME/.rc.d ]; then
    for file in $HOME/.rc.d/*.sh; do
        source $file
    done
fi
