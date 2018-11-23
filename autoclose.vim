""""""" autoclose """""""
" Source: https://github.com/Townk/vim-autoclose
"
" Dieses Plugin sorgt dafür, daß öffnende Klammern und Anführungszeichen
" automatisch geschlossen werden. Das spart eine Menge Arbeit!
"
Plug 'townk/vim-autoclose'

let g:AutoClosePairs = "'' () {} [] ""  "

" AutoClose Popup Menu Visible 
" Folgende Einstellung behebt einen Konflikt mit YouCompleMe:
let g:AutoClosePumvisible = {"ENTER": "", "ESC": ""}
" https://github.com/Townk/vim-autoclose/issues/65

