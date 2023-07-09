" Configuration of the Asynchronous Lint Engine



" Fix files with prettier
let b:ale_fixers = ['prettier', 'remove_trailing_lines', 'trim_whitespace']

" Fix on save
let g:ale_fix_on_save = 1

" post install (yarn install | npm install)

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }


" Enable completion where available.
" This setting must be set before ALE is loaded.

let g:ale_completion_enabled = 1

" automatic imports from external modules
let g:ale_completion_autoimport = 1

" ALE provides an omni-completion function you can use for triggering completion manually with <C-x><C-o>.
set omnifunc=ale#completion#OmniFunc

" ansible-lint does not seem to work without this parameter:
" keep the sign gutter open
let g:ale_sign_column_always = 1


" Do not highlight messages matching strings like these.
let b:ale_exclude_highlights = ['line too long']

" no virtual text at end of lines
let g:ale_virtualtext_cursor = 'disabled'

" Airline integration:
let g:airline#extensions#ale#enabled = 1

"Plug 'w0rp/ale' " Asynchronous Lint Engine
Plug 'dense-analysis/ale'
