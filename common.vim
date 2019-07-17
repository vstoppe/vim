""" Keyboard mappings

imap <C-c> <CR><Esc>kA<CR> " Control+c fuehrt ein newline im insertmode ein
" Control+f gedacht im im insertmode hinter ein Anführungszeichen zu springen
imap <C-f> <Esc>la

set encoding=utf-8 " UTF8 Support
set relativenumber " auch ueber ":set rnu" erreichbar
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise"
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop"
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type"
set path+=**      " Rekursive Suche 
set mouse=a

if !has('nvim')
	set ttymouse=xterm2
endif
"
" " Alle passenden Dateien bei einer Suche als Tabs anzeigen
" set wildmenu       "


""" Tab-Weiten

" Ein paar Tabweiten definieren
set tabstop=4     " Weite eines Tab-Zeichens
set noexpandtab " Ersetzt tab durch whitespaces
set softtabstop=4 " Anzahl der Whitespaces fuer -expandtab-
set shiftwidth=4  " Anzahl der Whitespaces im Normal-Mode
set nopaste " set paste kann Key-Mappings kaputt machen und
" Plugins ruinieren!! daher sollte es automatisch deaktiviert bleiben


""" Unoetige Whatespaces markieren
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

