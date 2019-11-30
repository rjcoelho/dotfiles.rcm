# see https://www.iterm2.com/documentation-shell-integration.html
[ -f "${HOME}/.iterm2_shell_integration.${SHELL_EXTENSION}" ] && \
    source "${HOME}/.iterm2_shell_integration.${SHELL_EXTENSION}"

if [ ! -x "$(command -v osascript)" ]; then
    return 1
fi
alias toggle-dark-mode="osascript -e 'tell app \"System Events\" to tell appearance preferences to set dark mode to not dark mode'"
