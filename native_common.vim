" inspirtations:
" * https://www.youtube.com/watch?v=XA2WjJbmmoM

" disable compatibility mode for exta functions:
set nocompatible

" enable syntax and plugins (at least netrw)
syntax enable
filetype plugin on


""" Keyboard mappings
"
" Control+c fuehrt ein newline im insertmode ein
imap <C-c> <CR><Esc>kA<CR>
" Control+f gedacht im im insertmode hinter ein Anführungszeichen zu springen
imap <C-f> <Esc>la

set encoding=utf-8 " UTF8 Support
set hlsearch      " highlight search terms
set ignorecase    " ignore case when searching
set incsearch     " show search matches as you type"
set mouse=a
set path+=**      " recursive search (add all subdirectories to path)
set relativenumber " auch ueber ":set rnu" erreichbar
set showmatch     " set show matching parenthesis
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise"
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop"
set wildmenu      " display all matching files when we to tab complete

if !has('nvim')
	set ttymouse=xterm2
endif


""" Tab-Weiten

" Ein paar Tabweiten definieren
set tabstop=4     " Weite eines Tab-Zeichens
set noexpandtab " Ersetzt tab durch whitespaces
set softtabstop=4 " Anzahl der Whitespaces fuer -expandtab-
set shiftwidth=4  " Anzahl der Whitespaces im Normal-Mode
set nopaste " set paste kann Key-Mappings kaputt machen und
" Plugins ruinieren!! daher sollte es automatisch deaktiviert bleiben


""" display unnecessary white spaces
highlight BadWhitespace
    \ ctermbg=red
    \ guibg=red

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h
    \ match BadWhitespace /\s\+$/


""" Enable code folding
 set foldmethod=indent
 set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za



""" Inter Newline by pressing (shift) enter
" Shift-Enter doesn't work in terminal

nmap <Enter> o<Esc>
"nmap <S-Enter> O<Esc>
"nmap <CR> o<Esc>




""""""" TAG JUMPING """""""
"""""""""""""""""""""""""""

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use <C-]> to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use <C^t> to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags
