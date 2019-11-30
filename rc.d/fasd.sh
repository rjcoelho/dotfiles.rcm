# return if requirements are not found.
if [ ! -x "$(command -v fasd)" ]; then
    return 1
fi

fasd_cache="$HOME/.fasd-init-cache.$UID.$SHELL_EXTENSION"
if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
  fasd --init posix-alias $SHELL_EXTENSION-hook \
    $SHELL_EXTENSION-ccomp $SHELL_EXTENSION-ccomp-install \
    $SHELL_EXTENSION-wcomp $SHELL_EXTENSION-wcomp-install >| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache

function fasd_cd {
  local fasd_ret="$(fasd -d "$@")"
  if [[ -d "$fasd_ret" ]]; then
    cd "$fasd_ret"
  else
    print "$fasd_ret"
  fi
}

# Changes the current working directory interactively.
alias j='fasd_cd -i'