" By default, language specific plugins are not loaded. This can be changed
" with the following:
let g:spacevim_plugin_groups_exclude = [
 \ 'ruby', 'python', 'web', 'go', 'javascript', 'scala', 'lang', 'lang#go',
 \ ]
"let g:spacevim_plugin_groups_include = []
"let g:spacevim_plugin_groups = []

" If you want to add some custom plugins, use these options:
let g:spacevim_custom_plugins = [
 \ ['vim-erlang/vim-erlang-omnicomplete'],
 \ ['vim-erlang/vim-erlang-compiler'],
 \ ['vim-erlang/vim-erlang-skeletons'],
 \ ['vim-erlang/vim-erlang-runtime'],
 \ ]
