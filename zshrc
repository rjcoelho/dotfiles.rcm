#!/bin/sh

#zmodload zsh/zprof

export SHELL_EXTENSION=zsh

# see https://chr4.org/blog/2014/09/10/conf-dot-d-like-directories-for-zsh-slash-bash-dotfiles/
if [ -d $HOME/.zshrc.d ]; then
    for file in $HOME/.zshrc.d/*.zsh; do
        source $file
    done
fi
if [ -d $HOME/.zgen.d ]; then
    for file in $HOME/.zgen.d/*.zsh; do
        source $file
    done
fi
if [ -d $HOME/.rc.d ]; then
    for file in $HOME/.rc.d/*.sh; do
        source $file
    done
fi

#zprof
