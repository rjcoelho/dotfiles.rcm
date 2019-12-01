ZGEN_USE_PREZTO=0

function zgen_without_zprezto() {
    # see https://github.com/unixorn/awesome-zsh-plugins
    zgen loadall <<EOPLUGINS
        rjcoelho/zsh-history
        rjcoelho/zsh-directory
        rjcoelho/zsh-completion
        zsh-users/zsh-syntax-highlighting
        zsh-users/zsh-history-substring-search
        zsh-users/zsh-autosuggestions
        zsh-users/zsh-completions
#        softmoth/zsh-vim-mode
        leophys/zsh-plugin-fzf-finder
    
        mafredri/zsh-async # pure needs it
#       intelfx/pure
        miekg/lean
EOPLUGINS
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
    zgen prezto prompt theme 'pure' # default to sorin
    zgen prezto utility:ls color 'yes'
    zgen prezto '*:*' color 'yes'
    #zgen prezto tmux:auto-start local 'yes'
    zgen prezto tmux:iterm integrate 'yes'
    zgen prezto module:terminal auto-title 'yes'
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
