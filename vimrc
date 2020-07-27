"""""""""" VIM-Anpassungen ohne Plugins """"""""""
""""""""""""""""""""""""""""""""""""""""""""""""""

source common.vim " common setting which do not affect plugins 
source filetype_settings.vim
source splitscreen.vim " source split screen key bindings

" Statusline can be a powerline/airline replacement in vim environments without
" vim plugins
" source ~/.vim/statusline.vim

" use different python_host_prog depending if we start vim
" on Linux or Macos:
let s:uname = system("uname -s")
if has('unix')
	if  s:uname == "Darwin"
		Darwin python
		let g:python_host_prog  = '/opt/local/bin/python2.7'
		let g:python3_host_prog = '/opt/local/bin/python3.6'
	elseif s:uname == "Linux"
		Linux python
		let g:python_host_prog  = '/usr/bin/python2'
		let g:python3_host_prog = '/usr/bin/python3'
	endif
endif


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

source airline.vim
source ale.vim        " Asynchronous Lint Engine
source autoclose.vim  " autoclose (seems to collide with YouCompleMe)
source bufferline.vim " Super simple vim plugin to show the list of buffers in the command bar.
source ctrlp.vim
source design.vim " settings for appearance
source dev-icons.vim
"source ~/.vim/deoplete.vim
source fugitive.vim
source indentline.vim " display for every tab a thin vertical indent line
source nerdtree.vim
source neosnippet.vim
source oceanic-next.theme
source puppet.vim
source python.vim
source syntax.vim " Syntax highlighting
source shellcheck.vim " Syntax checking for BASH
source smooth_scroll.vim " smooth scrolling
source snipmate.vim " Snipmate stellt skeletons fuer conditionals bereit
source vagrant.vim
source yaml.vim
"source ~/.vim/neotags.vim

if s:uname == "Linux"
	neotags activated in linux
	source neotags.vim
endif

Plug 'KabbAmine/zeavim.vim'
Plug 'tpope/vim-surround'

""""""" Farbschemata """""""
"Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'
" vim-colorschema enthaelt osx_like Farbschema
"Plug 'flazz/vim-colorschemes'

" Initialize plugin system
call plug#end()

"colorscheme OceanicNext
colorscheme gruvbox

" Some old plugins which are right not not in use...
"source ~/.vim/youcompleteme.vim " Kollidiert mit Snipmate, das fuer Pupet sehr hilfreich ist
"

