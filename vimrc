"""""""""" VIM-Anpassungen ohne Plugins """"""""""
""""""""""""""""""""""""""""""""""""""""""""""""""

" use different python_host_prog depending if we start vim
" on Linux or Macos:
let s:uname = system("uname -s")
if has('unix')
	if  s:uname == "Darwin"
		Darwin python
		let g:python_host_prog  = '/opt/local/bin/python2.7'
		let g:python3_host_prog = '/usr/local/bin/python3.9'
		vimdir = '~/.vim'
		set vimdir = '~/.vim'
	elseif s:uname == "Linux"
		Linux python
		let g:python_host_prog  = '/usr/bin/python2'
		let g:python3_host_prog = '/usr/bin/python3'
		let g:vimdir = '/etc/vim'
	endif
endif

source ~/.vim/native_autoclose.vim
source ~/.vim/native_common.vim " common setting which do not affect plugins
source ~/.vim/native_filetype_settings.vim
source ~/.vim/native_netrw.vim
source ~/.vim/native_splitscreen.vim " source split screen key bindings



""" vim-plug configuration
""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

function! DoRemote(arg)
    UpdateRemotePlugins
endfunction

source ~/.vim/airline.vim
source ~/.vim/ale.vim        " Asynchronous Lint Engine
source ~/.vim/bufferline.vim " Super simple vim plugin to show the list of buffers in the command bar.
source ~/.vim/ctrlp.vim
source ~/.vim/design.vim " settings for appearance
source ~/.vim/dev-icons.vim
source ~/.vim/fugitive.vim
source ~/.vim/gitblame.vim
source ~/.vim/indentline.vim " display for every tab a thin vertical indent line
source ~/.vim/nerdtree.vim
source ~/.vim/oceanic-next.theme
source ~/.vim/python.vim
source ~/.vim/syntax.vim " Syntax highlighting
source ~/.vim/shellcheck.vim " Syntax checking for BASH
source ~/.vim/smooth_scroll.vim " smooth scrolling
source ~/.vim/snipmate.vim " provides sometimes better skeletons than neosnipppet
source ~/.vim/vagrant.vim
source ~/.vim/xmledit.vim


"source ~/.vim/ansible.vim
"source ~/.vim/django_support.vim
"source ~/.vim/neosnippet.vim " includes deoplete / conflicts with ctags
"source ~/.vim/puppet.vim
"source ~/.vim/yaml.vim
"source ~/.vim/neotags.vim

if s:uname == "Linux"
	neotags activated in linux
	source neotags.vim
endif


" From mastering the Vim Language:
source ~/.vim/custom-operators.vim
source ~/.vim/custom-text-objects.vim


"Plug 'towolf/vim-helm'

" Initialize plugin system
call plug#end()

"colorscheme OceanicNext
colorscheme gruvbox
