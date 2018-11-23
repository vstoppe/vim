""""""" Powerline statusbar """""""
""""""""""""""""""""""""""""""""""

""" This setting is nescessary to make powerline 
""" work correctly unter arch linux
""" Package powerline-vim also has to be installed 

if has('vim')
	let g:powerline_pycmd="py3"

	Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

	" Always show statusline
	set laststatus=2
"
	" Use 256 colours (Use this setting only if your terminal supports 256 colours)
	set t_Co=256 ""
endif

if has('nvim')
	let g:airline_powerline_fonts = 1
	Plugin 'vim-airline/vim-airline'	
endif

