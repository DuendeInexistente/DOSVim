set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "torte"

" Console
highlight Normal     ctermfg=LightGrey	ctermbg=Black
highlight Search     ctermfg=Black	ctermbg=Red	cterm=NONE
highlight Visual					cterm=NONE
highlight Cursor     ctermfg=LightBlue	ctermbg=Black	cterm=bold
highlight Special    ctermfg=Brown
highlight Comment    ctermfg=Blue
highlight StatusLine ctermfg=lightblue	ctermbg=LightGrey
highlight Statement  ctermfg=Yellow			cterm=NONE
highlight Type	     ctermfg=Green				cterm=NONE
"