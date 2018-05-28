"""""""""" VIM-Anpassungen ohne Plugins """"""""""
""""""""""""""""""""""""""""""""""""""""""""""""""



""""""" diverses """""""
""""""""""""""""""""""""

""" Allgemeine Settings ein-sourcen
source ~/.vim/common.vim

""" Statusline Anpassungen wie Powerline
source ~/.vim/statusline.vim

"filetype plugin on 

""" Dateispezifische Anpassungen

au BufNewFile,BufRead *.pp
	\ set filetype=puppet |
	\ set tabstop=4 |
	\ set shiftwidth=4 |
	\ set expandtab

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix \
	\ set filetype=python


"au BufNewFile,BufRead *.js, *.html, *.css
au BufNewFile,BufRead *.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

au BufNewFile,BufRead *.sh
    \ set tabstop=3 |
    \ set softtabstop=3 |
    \ set shiftwidth=3 |
    \ match BadWhitespace /\s\+$/


""" Enable code folding
 set foldmethod=indent
 set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za



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



""""""" Konfiguration der Plugins """""""
"""""""""""""""""""""""""""""""""""""""""

""" Ansible Plugin
"source ~/.vim/ansible.vim

""" Delimitmate
"source ~/.vim/delimitmate.vim

""" autoclose
" scheint sich mit YCM zu beissen
source ~/.vim/autoclose.vim


""""""" Super Searching """""""
" Durchsucht alles:
Plugin 'kien/ctrlp.vim'


""""""" Farbschemata """""""
"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'
" vim-colorschema enthaelt osx_like Farbschema
Plugin 'flazz/vim-colorschemes'

""" Plugin im um ein Wort einzufügen
" cs"'   Change surrounding from " to '
" ds"    Delete surrounding "
"Plugin 'tpope/vim-surround'


""" BASH support
source ~/.vim/bash.vim 

""" Auto indention von Python verbessern 
source  ~/.vim/indentline.vim

"""""" SimplyFold Plugin """""""
" Besseres Code Folding in Python
source ~/.vim/simplyfold.vim

""" Powerline statusbar
"source ~/.vim/powerline.vim

""" Auto-complete nachruesten
source ~/.vim/youcompleteme.vim

""" fugitive, git plugin
source ~/.vim/fugitive.vim


""" Syntax Checking / Highlighting:
source ~/.vim/syntax.vim 

""" Datei-Browser
source ~/.vim/nerdtree.vim

""" Split screen Konfiguration ein-sourcen:
source ~/.vim/splitscreen.vim

""" xmledit
"Plugin 'sukima/xmledit'

""" Weiches scrollen
source ~/.vim/smooth_scroll.vim

""" YAML support

source ~/.vim/yaml.vim

""" Snipmate stellt skeletons fuer conditionals bereit
source ~/.vim/snipmate.vim


""" Python mode
source ~/.vim/python-mode.vim


""" Buffer line

source ~/.vim/bufferline.vim


""" puppet plugin
source ~/.vim/puppet.vim


""""""""""""""""""""""""""""""""""""""""""""""

"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required




set background=dark
"colorscheme zenburn
"colorscheme osx_like
"colorscheme solarized
"colorscheme 256-grayvim
colorscheme desertedocean


" Wechsel fuer Farbschemata erleichtern:
"call togglebg#map("<F5>")
