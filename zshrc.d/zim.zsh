# User configuration sourced by interactive shells

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -e

# Customize prompt
RPROMPT+=' %F{6}$(show_rebar_profile) %F{4}$(show_aws_profile)' # sorin/pure
PROMPT_LEAN_RIGHT='rprompt' # lean

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

# Set a custom path for the completion dump file.
# If none is provided, the default ${ZDOTDIR:-${HOME}}/.zcompdump is used.
#zstyle ':zim:completion' dumpfile "${ZDOTDIR:-${HOME}}/.zcompdump-${ZSH_VERSION}"

# Set a custom terminal title format. Use prompt expansion strings for dynamic data.
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
# For example, '%n@%m: %~' corresponds to 'username@host: /current/directory'.
zstyle ':zim:termtitle' format '%n@%m: %~'

# Append `../` to your input for each `.` you type after an initial `..`
#zstyle ':zim:input' double-dot-expand yes

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=10'

# Initialize modules
if [[ ${ZDOTDIR:-${HOME}}/.zim/init.zsh -ot ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Update static initialization script if it's outdated, before sourcing it
  source ${ZDOTDIR:-${HOME}}/.zim/zimfw.zsh init -q
fi
source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
