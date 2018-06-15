Plugin 'rodjek/vim-puppet'

" To enable Just puppet-lint and disable the parser uncomment next line
"let g:syntastic_puppet_checkers=['puppetlint']

" Formatting based on the latest Puppetlabs Style Guide
" Syntax highlighting compatible with puppet 4.x
" Automatic => alignment
" If you don't like that, add let g:puppet_align_hashes = 0 to your vimrc.
" Ctags support
" Doesn't require a bloated JRE
" Doesn't take minutes to open

" Automatische Einrueckung aktivieren:


au BufNewFile,BufRead *.pp
	\ set ft=puppet |
	\ let g:puppet_align_hashes = 1
	\ set tabstop=4 |
	\ set shiftwidth=4 |
	\ set expandtab
