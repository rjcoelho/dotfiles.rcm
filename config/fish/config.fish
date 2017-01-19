# see https://fishshell.com/

# see https://github.com/kerl/kerl (erlang)
test -e {$HOME}/.kerlrc ; and source {$HOME}/.kerlrc
test -e {$KERL_DEFAULT_ACTIVATION} ; and source {$KERL_DEFAULT_ACTIVATION}.fish

# see https://www.iterm2.com/documentation-shell-integration.html
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
