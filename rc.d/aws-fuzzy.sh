# return if requirements are not found.
# see https://github.com/pmazurek/aws-fuzzy-finder
if [ ! -x "$(command -v aws-fuzzy)" ]; then
    return 1
fi

export AWS_FUZZ_USE_CACHE=yes
# use: export AWS_DEFAULT_PROFILE=... and export AWS_FUZZ_KEY_PATH=...

# bind to ctrl+w ctrl+s, zsh
command -v bindkey &> /dev/null && \
    bindkey -s '^w^s' 'aws-fuzzy^M'

# same for bash
command -v bind &> /dev/null && \
    bind  '"\C-w"\C-s": "aws-fuzzy\C-m"'
