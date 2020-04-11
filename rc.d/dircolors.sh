if [ ! -x "$(command -v dircolors)" ]; then
    return 1
fi
export DIR_COLORS_THEME=~/.config/dir_colors/nord
test -r "$DIR_COLORS_THEME" && \
    eval $(dircolors $DIR_COLORS_THEME)
