Plug 'ctrlpvim/ctrlp.vim'

" https://vimawesome.com/plugin/ctrlp-vim-everything-has-changed

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.

" * Written in pure Vimscript for MacVim, gVim and Vim 7.0+.
" * Full support for Vim's regexp as search patterns.
" * Built-in Most Recently Used (MRU) files monitoring.
" * Built-in project's root finder.
" * Open multiple files at once.
" * Create new files and directories.
" * Extensible.

" Change the default mapping and the default command to invoke CtrlP:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_files = 20000

" Once CtrlP is open:
" * Press <F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
" * Press <c-f> and <c-b> to cycle between modes.
" * Press <c-d> to switch to filename only search instead of full path.
" * Press <c-r> to switch to regexp mode.
" * Use <c-j>, <c-k> or the arrow keys to navigate the result list.
" * Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
" * Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
" * Use <c-y> to create a new file and its parent directories.
" * Use <c-z> to mark/unmark multiple files and <c-o> to open them.
