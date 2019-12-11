# return if requirements are not found.
if [ ! -x "$(command -v direnv)" ]; then
    return 1
fi
# see https://github.com/direnv/direnv
eval "$(direnv hook $SHELL_EXTENSION)"
