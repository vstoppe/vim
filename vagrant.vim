Plug 'hashivim/vim-vagrant'

au BufRead,BufNewFile Vagrantfile
	\ set filetype=ruby |
    \ set tabstop=2 |
	\ set shiftwidth=2
