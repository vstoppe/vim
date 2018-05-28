""" Auto-complete nachruesten

if !has('nvim')
	Plugin 'Valloric/YouCompleteMe'

	let g:ycm_python_binary_path = '/usr/bin/python2.7' 

		" Sicherstellen dass Auto-complete Fenster nach Benutzung wieder verschwindet:
	let g:ycm_autoclose_preview_window_after_completion=1

	" Shortcut fuer Definitionen auf Space+G
	map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
endif 
