#!/bin/sh

# see https://chr4.org/blog/2014/09/10/conf-dot-d-like-directories-for-zsh-slash-bash-dotfiles/
if [ -d $HOME/.login.d ]; then
    for file in $HOME/.login.d/*.sh; do
        source $file
    done
fi
