"""""""""" vim config without plugins for remote usage """"""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""" diverses """""""
""""""""""""""""""""""""

""" settings for native filemanager
source~/.vim/native_netrw.vim

""" common settings:
source ~/.vim/native_common.vim

""" Autoclose enhancement
source ~/.vim/native_autoclose.vim

""" filetype settings
source  ~/.vim/native_filetype_settings.vim

""" provide easy split navigation
source ~/.vim/native_splitscreen.vim

""" Statusline customisation like Powerline
source ~/.vim/native_statusline.vim

"""" configure integrated filemanager


"filetype plugin on

""" file specific parameters


""" Enable code folding
 set foldmethod=indent
 set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

""" Set manually gruvbox colortheme in light mode
" taken from: https://github.com/morhetz/gruvbox
set background=light
colorscheme gruvbox
