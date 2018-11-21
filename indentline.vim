""""""" Stellt dünne vertikale Linien für jede
""""""" Einrückungsebene dar.
""""""""""""""""""""""""""""""""""""""""""""""""""""


""" Dickere dunkelgraue Fuehrungslinien: 
let g:indentLine_setColors = 1


" Farbe zum Verbergen festlegen                                         
"set g:indentLine_color_term = 239                                     

let g:indentLine_concealcursor = 'inc'                                  
" let g:indentLine_conceallevel = 2 


" For code indented with tabs I think there is 
" no need to support it, because you can use 
set list lcs=tab:\|\ 

Plug 'yggdroot/indentline' 
