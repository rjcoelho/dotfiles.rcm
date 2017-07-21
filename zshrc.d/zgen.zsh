# see https://github.com/tarjoilija/zgen/issues/46
lazy_source () {
    eval "$1 () { [ -f $2 ] && source $2 && $1 \$@ }"
}

# see https://github.com/tarjoilija/zgen
lazy_source zgen ${HOME}/.zgen/zgen.zsh
# if the init script doesn't exist
if ! source "$HOME/.zgen/init.zsh"; then
    # see https://github.com/unixorn/awesome-zsh-plugins
    zgen load horosgrisa/autoenv
    zgen load miekg/lean

    # sensible defaults
    zgen load rjcoelho/zsh-saneopt

    # fish shell like syntax highlighting, shell's history search and autosuggestions
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-autosuggestions

    # additional completion definitions
    zgen load zsh-users/zsh-completions

    # save all to init script
    zgen save
fi
