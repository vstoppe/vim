" vim-ansible-yaml in not maintained anymore. It is better to get something
" different. 
Plug 'chase/vim-ansible-yaml' " also helps with non ansible yaml files

" source: https://github.com/chase/vim-ansible-yaml

au BufNewFile,BufRead *.yaml
	\ set ft=ansible |
	\ set shiftwidth=2

au BufNewFile,BufRead *.yml
	\ set ft=ansible |

au BufNewFile,BufRead *.eyaml
	\ set ft=ansible |

" in your vimrc file, then the indent function will remove all indent after a blank line. 
" The default behavior is to ignore blank lines when calculating the indent of the current line.
let g:ansible_options = {'ignore_blank_lines': 0}
