# see https://github.com/jclem/dotfiles/blob/master/zsh/fpath.zsh
if [[ -d $HOME/.config/zsh-functions && -n "$(ls -A $HOME/.config/zsh-functions)" ]]; then
  fpath=($HOME/.config/zsh-functions $fpath)
  autoload -U $HOME/.config/zsh-functions/*(:t)
fi
