"" tmuxline
let g:tmuxline_powerline_separators = 0

if has("nvim")
  augroup Terminal
    au!
    " close buffer on exit
    au TermClose * exe expand('<abuf>').'bd!'
  augroup END
endif
