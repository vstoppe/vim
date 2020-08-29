""" Dateispezifische Anpassungen
""""""""""""""""""""""""""""""""""""""""

" Settings for python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set filetype=python |

" Settings for javascript
au BufNewFile,BufRead *.js
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Settings for BASH scripts
au BufNewFile,BufRead *.sh
    \ set tabstop=3 |
    \ set softtabstop=3 |
    \ set shiftwidth=3 |
    \ match BadWhitespace /\s\+$/

" Setting for Ansible hosts file
au BufNewFile,BufRead hosts
	\ set expandtab |
	\ set shiftwidth=2
