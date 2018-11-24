"""""""""" VIM-Anpassungen ohne Plugins """"""""""
""""""""""""""""""""""""""""""""""""""""""""""""""

source ~/.vim/common.vim " common setting which do not affect plugins 
source ~/.vim/filetype_settings.vim
source ~/.vim/splitscreen.vim " source split screen key bindings

" Statusline can be a powerline/airline replacement in vim environments without
" vim plugins
" source ~/.vim/statusline.vim
let g:python3_host_prog='/opt/local/bin/python3.6'
let g:python_host_prog='/opt/local/bin/python2.7'

""" vim-plug configuration
""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

function! DoRemote(arg)
    UpdateRemotePlugins
endfunction


""" Auswahl der Statusbar """
"""""""""""""""""""""""""""""

" * Powerline kann unter Umständen VIM verlangsamen
" * Stellt aber mehr informationen dar.
" * Statusline ist schlanker, aber nicht so übersichtlich.
" * Airline replaces now Powerline, because it is compatible with Neovim
" source ~/.vim/powerline.vim

source ~/.vim/airline.vim
source ~/.vim/autoclose.vim " autoclose (seems to collide with YouCompleMe)
source ~/.vim/bufferline.vim " Super simple vim plugin to show the list of buffers in the command bar.
source ~/.vim/ctrlp.vim
source ~/.vim/dev-icons.vim
source ~/.vim/deoplete.vim
source ~/.vim/fugitive.vim
source ~/.vim/indentline.vim " display for every tab a thin vertical indent line
source ~/.vim/nerdtree.vim
source ~/.vim/neotags.vim
source ~/.vim/oceanic-next.theme
source ~/.vim/puppet.vim
source ~/.vim/python.vim
source ~/.vim/smooth_scroll.vim " smooth scrolling
source ~/.vim/snipmate.vim " Snipmate stellt skeletons fuer conditionals bereit
source ~/.vim/vagrant.vim

Plug 'w0rp/ale' " Asynchronous Lint Engine
Plug 'KabbAmine/zeavim.vim'
Plug 'tpope/vim-surround'

""""""" Farbschemata """""""
"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'
" vim-colorschema enthaelt osx_like Farbschema
"Plug 'flazz/vim-colorschemes'

" Initialize plugin system
call plug#end()


source ~/.vim/design.vim " settings for appearance

" Some old plugins which are right not not in use...
"source ~/.vim/youcompleteme.vim " Kollidiert mit Snipmate, das fuer Pupet sehr hilfreich ist
"source ~/.vim/syntax.vim " completly replaced by ale?
