# see https://en.wikipedia.org/wiki/Fortune_(Unix)
[ -x "$(command -v fortune)" ] && \
    fortune -s
