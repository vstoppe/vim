" https://vimawesome.com/plugin/fugitive-vim
Plug 'tpope/vim-fugitive'

" If fugitive is active, then show the statusline
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

""" Dokumentation
" https://github.com/tpope/vim-fugitive/blob/master/doc/fugitive.txt
"
" Gstatus
" shift+D above a stage files opens a diff view
