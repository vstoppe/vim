
"""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""

" Python-mode is a vim plugin that allows you 
" to use the pylint, rope, pydoc library in vim 
" to provide features like python code looking 
" for bugs, refactoring and some other usefull things.

" Plug 'klen/python-mode'


"""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""

" Vim plugin that runs the currently open file through Flake8,
" a static syntax and style checker for Python source code.
Plug 'nvie/vim-flake8'


"""""" SimplyFold Plugin """""""

" Code Folding for Python. Durch das Einrueckungssystem von Python ist
" das Codefolding mit Boardmitteln oft nicht funktional.

Plug 'tmhedberg/SimpylFold'

" DocStrings fuer gefalteten Code anzeigen:
let g:SimpylFold_docstring_preview=1
