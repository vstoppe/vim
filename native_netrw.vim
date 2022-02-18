" netrw settings
" Documentation: https://shapeshed.com/vim-netrw/

" :Explore - opens netrw in the current window
" :Sexplore - opens netrw in a horizontal split
" :Vexplore - opens netrw in a vertical split
"
" i: cycle through different views
" I: top banner help toggle


let g:netrw_liststyle = 3
" remove top banner
let g:netrw_banner = 0

" Open files in ...
" 1 - open files in a new horizontal split
" 2 - open files in a new vertical split
" 3 - open files in a new tab
" 4 - open in previous window
let g:netrw_browse_split = 2
" Default width
let g:netrw_winsize = 30

let g:netrw_altv = 1

"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
