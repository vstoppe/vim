"""""""""" VIM-Anpassungen ohne Plugins """"""""""
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""" diverses """""""
""""""""""""""""""""""""

""" Allgemeine Settings ein-sourcen
source ~/.vim/common.vim

"filetype plugin on 




""""""" Konfiguration des Plugin-Managers """""""
"""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " required for plugins
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


""" Dateispezifische Anpassungen
""""""""""""""""""""""""""""""""""""""""

" Anpassungen für Python-Dateien

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set filetype=python |



au BufNewFile,BufRead *.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

au BufNewFile,BufRead *.sh
    \ set tabstop=3 |
    \ set softtabstop=3 |
    \ set shiftwidth=3 |
    \ match BadWhitespace /\s\+$/


""""""" Konfiguration der Plugins """""""
"""""""""""""""""""""""""""""""""""""""""

""" autoclose
" scheint sich mit YCM zu beissen
source ~/.vim/autoclose.vim


""""""" Super Searching """""""
" Durchsucht alles:
source ~/.vim/ctrlp.vim


""""""" Farbschemata """""""
"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'
" vim-colorschema enthaelt osx_like Farbschema
Plugin 'flazz/vim-colorschemes'


""" BASH support
source ~/.vim/bash.vim 


""" Indentline stellt für jede Einrückungsebene eine
""" dünne vertikale Line dar.
source  ~/.vim/indentline.vim


""" Auswahl der Statusbar """
"""""""""""""""""""""""""""""

" * Powerline kann unter Umständen VIM verlangsamen
" * Stellt aber mehr informationen dar.
" * Statusline ist schlanker, aber nicht so übersichtlich.

""" Powerline statusbar
source ~/.vim/powerline.vim

""" Statusline Anpassungen wie Powerline
" source ~/.vim/statusline.vim

"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""


""" fugitive: Mächtiges Git-Plugin
source ~/.vim/fugitive.vim


""" Syntax Checking / Highlighting
" mit syntastic 
source ~/.vim/syntax.vim 


""" Datei-Manager
source ~/.vim/nerdtree.vim

""" Split screen Konfiguration ein-sourcen:
source ~/.vim/splitscreen.vim


""" Weiches scrollen
source ~/.vim/smooth_scroll.vim


""" YAML support
source ~/.vim/yaml.vim


""" Snipmate stellt skeletons fuer conditionals bereit
source ~/.vim/snipmate.vim


""" Python mode
"source ~/.vim/python.vim


""" Buffer line

source ~/.vim/bufferline.vim


""" puppet plugin
source ~/.vim/puppet.vim


""" Auto-complete nachruesten
" Kollidiert mit Snipmate, das fuer Pupet sehr hilfreich ist
"source ~/.vim/youcompleteme.vim

""""""""""""""""""""""""""""""""""""""""""""""


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required




set background=dark
"colorscheme zenburn
"colorscheme osx_like
"colorscheme solarized
"colorscheme 256-grayvim
colorscheme desertedocean
