ZGEN_USE_PREZTO=1

function zgen_without_zprezto() {
    # see https://github.com/unixorn/awesome-zsh-plugins
    #zgen load miekg/lean
    zgen load mafredri/zsh-async
    zgen load sindresorhus/pure
    # see https://github.com/sindresorhus/pure/wiki/Customizations,-hacks-and-tweaks
    prompt_newline='%666v'
    PROMPT=" $PROMPT"

    #zgen load sfischer13/zsh-sensible
    zgen load rjcoelho/zsh-saneopt
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-completions
    #zgen load laurenkt/zsh-vimto
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
    zgen prezto module:terminal auto-title 'yes'

    # install some rc prezto files
    #ln -sf "${ZDOTDIR:-$HOME}/.zgen/$ZGEN_PREZTO_REPO-$ZGEN_PREZTO_BRANCH/runcoms/zprofile" "${ZDOTDIR:-$HOME}/.zprofile"
    #ln -sf "${ZDOTDIR:-$HOME}/.zgen/$ZGEN_PREZTO_REPO-$ZGEN_PREZTO_BRANCH/runcoms/zshenv" "${ZDOTDIR:-$HOME}/.zshenv"

    # see https://github.com/sorin-ionescu/prezto/pull/1638

    # see https://github.com/unixorn/awesome-zsh-plugins
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

# custom prompt
RPROMPT+=' %F{6}$(show_rebar_profile_sorin)' # sorin/pure
PROMPT_LEAN_RIGHT='show_rebar_profile_lean' # lean
prompt_newline='%666v' # see https://github.com/sindresorhus/pure/wiki/Customizations,-hacks-and-tweaks