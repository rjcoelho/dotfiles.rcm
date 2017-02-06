"" ctrlp+ctags
nnoremap <leader>: :CtrlPTag<cr>

function! ReindexCtags()
  let l:ctags_hook = '$(git rev-parse --show-toplevel)/.git/hooks/ctags'
  if exists(l:ctags_hook)
    exec '!'. l:ctags_hook
  else
    exec "!ctags -R ."
  endif
endfunction
nmap <Leader>ct :call ReindexCtags()<cr>
