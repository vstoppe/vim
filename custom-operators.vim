Plug 'christoomey/vim-system-copy'

" System-copy copies Text into system clipboard
"
" cpiw => copy inner word
" cpi' => copy sinside single quotes to system clipboard
" cvi  => paste inside single quotes from system clipboard
" cP   => copy current line directly
" cV   => paste content of system clipboard to the next line


Plug 'tpope/vim-surround'

" Examples
" cs"' => change surrounding " to '
" cs'<q> => change surrounging ' to <q>
" cst" => change surrounding tag to "
" ds"  => delete surrounding "
" ysiw] => insert surrounding inner word to []


Plug 'tpope/vim-commentary'
" gc{motion} => Comment or uncomment lines that {motion} moves over.
" gcc => Comment or uncomment [count] lines.
" {Visual}gc => Comment or uncomment the highlighted lines.
" gcgc / gcu => uncomment
