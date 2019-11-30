# see https://github.com/leophys/zsh-plugin-fzf-finder
FZF_FINDER_BINDKEY=^e
bindkey ${FZF_FINDER_BINDKEY:-'\ee'} fzf-finder-widget-editor
bindkey ${FZF_FINDER_BINDKEY:-'\er'} fzf-finder-widget-pager
