" Linux Magazine mode for VIM
" Language: 	propietary Linux Magazine typesetting
" Maintaner:	José María Ruiz <josemariaruiz@gmail.com>
" Latest Revision: 2012-07-17


if exists("b:current_syntax")
	finish
endif

" Keywords
syn keyword lmTitle ZT
syn keyword lmKeywords  L LI IT D V
syn region lmCommand start=+@+ end=+:+ contains=lmTitle,lmKeywords


"------------------------------------------------------------/
" Setup syntax highlighting
"------------------------------------------------------------/

let b:current_syntax = "linuxmagazine"

hi def link lmKeywords Keyword
hi def link lmCommand Statement
hi def link lmTitle Type
