" use line numbers
set number

" ruler line
set colorcolumn=80

" how many columns a tab counts for
set tabstop=4

" how many columns text is indented with the reindent operations (<< and >>)
set shiftwidth=4

" amount of columns vim uses when you hit Tab in insert mode
set softtabstop=4

" convert tabs to spaces
:set expandtab

" highlight leading tabs
augroup unwantedchars
	autocmd!
	:autocmd BufWinEnter * match UnwantedChars /^\t\+/
augroup END
:highlight UnwantedChars ctermbg=darkgreen guibg=darkgreen

" display tabs and trailing spaces
set listchars=tab:>-,trail:~
set list

