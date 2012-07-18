" Linux Magazine mode for VIM
" Language: 	propietary Linux Magazine typesetting
" Maintaner:	José María Ruiz <josemariaruiz@gmail.com>
" Latest Revision: 2012-07-17


if exists("b:current_syntax")
	finish
endif



" Keywords

syn keyword lmKeywords   LI IT
syn region lmCommand start=+@+ end=+:+ contains=lmKeywords


"---------------------------------------
" Capturing 
" @ZT:This is my title
"---------------------------------------
syn match lmTitleText "\.\+"
syn keyword lmTitleTag ZT L D V
syn region lmTitle start=+@+ end=+:+ contains=lmTitleTag nextgroup=lmTitleText


"---------------------------------------
" Capturing
" <u>http://www.google.com<u>
" <c>MyClass()<c>
"---------------------------------------
syn match lmUrl "[^<]+"
syn match lmText "[^<]+"
syn region lmUrlTag start=+<u>+ end=+<u>+ contains=lmUrl
syn region lmVerbatimTag start=+<c>+ end=+<c>+ contains=lmText



"------------------------------------------------------------/
" Setup syntax highlighting
"------------------------------------------------------------/

let b:current_syntax = "linuxmagazine"

hi def link lmKeywords Keyword
hi def link lmCommand Statement

hi def link lmUrl Keyword
hi def link lmUrlTag Comment

hi def link lmText Constant 
hi def link lmVerbatimTag Keyword

hi def link lmTitleText Type 
hi def link lmTitleTag Type
hi def link lmTitle Keyword
