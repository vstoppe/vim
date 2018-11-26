""" Dateispezifische Anpassungen
""""""""""""""""""""""""""""""""""""""""

" Anpassungen für Python-Dateien

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set filetype=python |



au BufNewFile,BufRead *.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

au BufNewFile,BufRead *.sh
    \ set tabstop=3 |
    \ set softtabstop=3 |
    \ set shiftwidth=3 |
    \ match BadWhitespace /\s\+$/
