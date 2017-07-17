# see https://github.com/tarjoilija/zgen
source "${HOME}/.zgen/zgen.zsh"
# if the init script doesn't exist
if ! zgen saved; then
    # see https://github.com/unixorn/awesome-zsh-plugins
    zgen load horosgrisa/autoenv
    zgen load miekg/lean

    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-completions

    # https://github.com/Tarrasch/zsh-functional
    # https://github.com/willghatch/zsh-saneopt
    # https://github.com/unixorn/git-extra-commands

    # save all to init script
    zgen save
fi

#TODO: move elsewhere zsh-sensible ?
# some prompts need it
setopt prompt_subst
# usability
setopt auto_cd
