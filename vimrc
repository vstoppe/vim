"""""""""" VIM-Anpassungen ohne Plugins """"""""""
""""""""""""""""""""""""""""""""""""""""""""""""""


""""""" diverses """""""
""""""""""""""""""""""""

""" Allgemeine Settings ein-sourcen
source ~/.vim/common.vim

"filetype plugin on 



""" vim-plug configuration
""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

""" autoclose (seems to collide with YouCompleMe)
source ~/.vim/autoclose.vim

source ~/.vim/ctrlp.vim
source ~/.vim/deoplete.vim
source ~/.vim/fugitive.vim
source ~/.vim/nerdtree.vim
source ~/.vim/neotags.vim
source ~/.vim/puppet.vim

""""""" vim dev-icons """"
" fancy symbols for all situations
" the dev-icons are not nescessary if the full
" mononoki font set is installed

source ~/.vim/dev-icons.vim

Plug 'KabbAmine/zeavim.vim'

" Asynchronous Lint Engine
Plug 'w0rp/ale'

" Buffer line: Super simple vim plugin to show the list of buffers in the command bar.
source ~/.vim/bufferline.vim

""" Indentline stellt für jede Einrückungsebene eine
""" dünne vertikale Line dar.
source  ~/.vim/indentline.vim

""" Weiches scrollen
source ~/.vim/smooth_scroll.vim

""" Snipmate stellt skeletons fuer conditionals bereit
source ~/.vim/snipmate.vim


""""""" Farbschemata """""""
"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'
" vim-colorschema enthaelt osx_like Farbschema
Plug 'flazz/vim-colorschemes'

source ~/.vim/oceanic-next.theme


" Initialize plugin system
call plug#end()



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









""" BASH support
source ~/.vim/bash.vim 




""" Auswahl der Statusbar """
"""""""""""""""""""""""""""""

" * Powerline kann unter Umständen VIM verlangsamen
" * Stellt aber mehr informationen dar.
" * Statusline ist schlanker, aber nicht so übersichtlich.
" * Airline replaces now Powerline, because it is compatible with Neovim

" source ~/.vim/powerline.vim
" source ~/.vim/statusline.vim

source ~/.vim/airline.vim



"""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""




""" Syntax Checking / Highlighting
" mit syntastic 
source ~/.vim/syntax.vim 



""" Split screen Konfiguration ein-sourcen:
source ~/.vim/splitscreen.vim



""" Python mode
"source ~/.vim/python.vim




""" Auto-complete nachruesten
" Kollidiert mit Snipmate, das fuer Pupet sehr hilfreich ist
"source ~/.vim/youcompleteme.vim

source ~/.vim/vagrant.vim

""""""""""""""""""""""""""""""""""""""""""""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" File for loading automatically stuff at startup
source ~/.vim/autoload.vim


set background=dark
"colorscheme zenburn
"colorscheme osx_like
"colorscheme 256-grayvim
"colorscheme desertedocean
"colorscheme solarized8_dark_high
colorscheme OceanicNext
