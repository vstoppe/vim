"""""""""" VIM-Anpassungen ohne Plugins """"""""""
""""""""""""""""""""""""""""""""""""""""""""""""""

" use different python_host_prog depending if we start vim
" on Linux or Macos:
let s:uname = system("uname -s")
if has('unix')
	if  s:uname == "Darwin"
		Darwin python
		let g:python_host_prog  = '/opt/local/bin/python2.7'
		let g:python3_host_prog = '/opt/local/bin/python3.6'
		vimdir = '~/.vim'
		set vimdir = '~/.vim'
	elseif s:uname == "Linux"
		Linux python
		let g:python_host_prog  = '/usr/bin/python2'
		let g:python3_host_prog = '/usr/bin/python3'
		let g:vimdir = '/etc/vim'
	endif
endif

source $vimdir/common.vim " common setting which do not affect plugins
source $vimdir/filetype_settings.vim
source $vimdir/splitscreen.vim " source split screen key bindings

" Statusline can be a powerline/airline replacement in vim environments without
" vim plugins
" source ~/.vim/statusline.vim


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

source $vimdir/ansible.vim
source $vimdir/airline.vim
source $vimdir/ale.vim        " Asynchronous Lint Engine
source $vimdir/autoclose.vim  " autoclose (seems to collide with YouCompleMe)
source $vimdir/bufferline.vim " Super simple vim plugin to show the list of buffers in the command bar.
source $vimdir/ctrlp.vim
source $vimdir/design.vim " settings for appearance
source $vimdir/dev-icons.vim
source $vimdir/fugitive.vim
source $vimdir/indentline.vim " display for every tab a thin vertical indent line
source $vimdir/nerdtree.vim
source $vimdir/neosnippet.vim " includes deoplete
source $vimdir/oceanic-next.theme
source $vimdir/puppet.vim
source $vimdir/python.vim
source $vimdir/syntax.vim " Syntax highlighting
source $vimdir/shellcheck.vim " Syntax checking for BASH
source $vimdir/smooth_scroll.vim " smooth scrolling
source $vimdir/snipmate.vim " provides sometimes better skeletons than neosnipppet
source $vimdir/vagrant.vim
"source $vimdir/yaml.vim
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
