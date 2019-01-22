Plug 'chase/vim-ansible-yaml' " also helps with non ansible yaml files

" source: https://github.com/chase/vim-ansible-yaml

au BufNewFile,BufRead *.yaml
	\ set ft=ansible |

au BufNewFile,BufRead *.yml
	\ set ft=ansible |
