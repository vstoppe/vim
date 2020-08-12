"Plug 'pearofducks/ansible-vim' " most recommended ansible vim plugin: https://github.com/pearofducks/ansible-vim
Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }


au BufRead,BufNewFile */playbooks/*.yml set filetype=yaml.ansible


"https://github.com/MicahElliott/Rocannon (quiet old / 6 years)
"Plug 'micahelliott/rocannon'

