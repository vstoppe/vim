"Plug 'pearofducks/ansible-vim' " most recommended ansible vim plugin: https://github.com/pearofducks/ansible-vim
Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }

" Enable snippets for ansible. Compatible with UtilSnips or SnipMate
" https://github.com/phenomenes/ansible-snippets
Plug 'phenomenes/ansible-snippets'


au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible


"https://github.com/MicahElliott/Rocannon (quiet old / 6 years)
"Plug 'micahelliott/rocannon'
