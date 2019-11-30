# return if requirements are not found.
if [ ! -x "$(command -v fzf)" ]; then
    return 1
fi

# see https://github.com/junegunn/fzf
[ -f "${HOME}/.fzf.${SHELL_EXTENSION}" ] && \
    source "${HOME}/.fzf.${SHELL_EXTENSION}"

_fzf_complete_ssh() {
  _fzf_complete '+m' "$@" < <(
  command cat <(cat ~/.ssh/config ~/.ssh/config.d/* /etc/ssh/ssh_config 2> /dev/null | command grep -i '^host ' | command grep -v '[*?]' | awk '{for (i = 2; i <= NF; i++) print $1 " " $i}') \
        <(command grep -oE '^[[a-z0-9.,:-]+' ~/.ssh/known_hosts | tr ',' '\n' | tr -d '[' | awk '{ print $1 " " $1 }') \
        <(command grep -v '^\s*\(#\|$\)' /etc/hosts | command grep -Fv '0.0.0.0') |
        awk '{if (length($2) > 0) {print $2}}' | sort -u
  )
}
