# see https://github.com/clvv/fasd
[ -x "$(command -v fasd)" ] && \
    eval "$(fasd --init posix-alias bash-hook)"
