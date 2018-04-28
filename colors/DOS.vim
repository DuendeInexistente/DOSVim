set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "DOS"

" Console
highlight Normal     ctermfg=LightGrey	ctermbg=Black
highlight Search     ctermfg=Black	ctermbg=Red	cterm=NONE
highlight Visual					cterm=NONE
highlight Cursor     ctermfg=LightBlue	ctermbg=Black	cterm=bold
highlight Special    ctermfg=lightgreen
highlight Comment    ctermfg=lightBlue
highlight StatusLine ctermfg=lightblue	ctermbg=darkred
highlight Statement  ctermfg=Yellow			cterm=NONE
highlight Type	     ctermfg=Green				cterm=NONE
"

highlight User1 ctermbg=green guibg=green ctermfg=black guifg=black
set statusline=%1*			" Switch to User1 color highlight
set statusline+=%<%F			" file name, cut if needed at start
set statusline+=%M			" modified flag
set statusline+=%y			" file type
set statusline+=%=			" separator from left to right justified
set statusline+=\ %{WordCount()}\ words,
set statusline+=\ %l/%L\ lines,\ %P	" percentage through the file
