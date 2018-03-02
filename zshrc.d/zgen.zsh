ZGEN_USE_PREZTO=1

function zgen_without_zprezto() {
    # see https://github.com/unixorn/awesome-zsh-plugins
    zgen load miekg/lean
    #zgen load sfischer13/zsh-sensible
    zgen load rjcoelho/zsh-saneopt
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-completions
}

function zgen_using_zprezto() {
    # default modules
    zgen prezto
    #ZGEN_PREZTO_LOAD_DEFAULT=0 # 'environment' 'terminal' 'editor' 'history' 'directory' 'spectrum' 'utility' 'completion' 'prompt'

    # extra modules
    zgen prezto git
    zgen prezto fasd
    zgen prezto homebrew
    zgen prezto osx
    zgen prezto autosuggestions
    #zgen prezto tmux

    # zgen options
    #zgen prezto editor key-bindings 'vi' # emacs|vi
    zgen prezto prompt theme 'sorin' # default to sorin
    zgen prezto utility:ls color 'yes'
    zgen prezto '*:*' color 'yes'
    #zgen prezto tmux:auto-start local 'yes'
    zgen prezto tmux:iterm integrate 'yes'

    # install some rc prezto files
    ln -sf "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" "${ZDOTDIR:-$HOME}/.zprofile"
    ln -sf "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" "${ZDOTDIR:-$HOME}/.zshenv"

    # see https://github.com/unixorn/awesome-zsh-plugins
    zgen load zpm-zsh/autoenv
}

# see https://github.com/tarjoilija/zgen
source "${HOME}/.zgen/zgen.zsh"
# if the init script doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    [[ $ZGEN_USE_PREZTO == 1 ]] && zgen_using_zprezto || zgen_without_zprezto

    # save all to init script
    zgen save
fi
