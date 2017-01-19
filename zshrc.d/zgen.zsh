# see https://github.com/tarjoilija/zgen
#ZGEN_PREZTO_LOAD_DEFAULT=0 # environment' 'terminal' 'editor' 'history' 'directory' 'spectrum' 'utility' 'completion' 'prompt'
source "${HOME}/.zgen/zgen.zsh"
# if the init script doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen prezto
    zgen prezto editor key-bindings 'vi' # emacs|vi
    zgen prezto prompt theme 'sorin'
    zgen prezto utility:ls color 'yes'
    zgen prezto '*:*' color 'yes'

    # extra modules
    zgen prezto git
    zgen prezto fasd
    zgen prezto homebrew
    zgen prezto osx
    zgen prezto autosuggestions

    # install some rc prezto files
    ln -sf "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" "${ZDOTDIR:-$HOME}/.zprofile"
    ln -sf "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zshenv" "${ZDOTDIR:-$HOME}/.zshenv"

    # plugins
    zgen load horosgrisa/autoenv

    # save all to init script
    zgen save
fi
