# return if requirements are not found.
if [ ! -x "$(command -v brew)" ]; then
    return 1
fi

BREW_PREFIX=$(brew --prefix)
if [ -d "$BREW_PREFIX/opt/coreutils" ]; then
    export PATH="$BREW_PREFIX/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="$BREW_PREFIX/opt/coreutils/libexec/gnuman:$MANPATH"
fi

if [ -d "$BREW_PREFIX/opt/gnu-sed" ]; then
    export PATH="$BREW_PREFIX/opt/gnu-sed/libexec/gnubin:$PATH"
    export MANPATH="$BREW_PREFIX/opt/gnu-sed/libexec/gnuman:$MANPATH"
fi
if [ -d "$BREW_PREFIX/opt/gnu-getopt" ]; then
    export PATH="$BREW_PREFIX/opt/gnu-getopt/bin:$PATH"
    export MANPATH="$BREW_PREFIX/opt/gnu-getopt/share:$MANPATH"
fi

alias brewc='brew cleanup'
alias brewi='brew install'
alias brewL='brew leaves'
alias brewl='brew list'
alias brewo='brew outdated'
alias brews='brew search'
alias brewu='brew upgrade'
alias brewx='brew uninstall'