""""""" Poerline statusbar """""""
""""""""""""""""""""""""""""""""""

""" This setting is nescessary to make powerline 
""" work correctly unter arch linux
""" Package powerline-vim also has to be installed 
let g:powerline_pycmd="py3"

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Always show statusline
set laststatus=2
"
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256 ""

