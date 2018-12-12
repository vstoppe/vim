" Configuration of the Asynchronous Lint Engine



" Fix files with prettier
let b:ale_fixers = ['prettier']


" post install (yarn install | npm install)

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }


" Enable completion where available.
" This setting must be set before ALE is loaded.

let g:ale_completion_enabled = 1

Plug 'w0rp/ale' " Asynchronous Lint Engine
