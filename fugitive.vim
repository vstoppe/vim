" https://vimawesome.com/plugin/fugitive-vim
Plugin 'tpope/vim-fugitive'

" If fugitive is active, then show the statusline
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}
