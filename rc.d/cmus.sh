# return if requirements are not found.
# see https://linux.die.net/man/1/cmus and https://linux.die.net/man/1/cmus-remote
if [ ! -x "$(command -v cmus-remote)" ]; then
    return 1
fi

export CMUS_PLAYLIST="~/Music"
alias cmus-clear='cmus-remote -C "clear -p"'
alias cmus-refresh='cmus-clear ; cmus-remote -C "add -p $CMUS_PLAYLIST"'
