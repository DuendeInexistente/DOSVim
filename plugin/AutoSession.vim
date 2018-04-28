fu! SaveSess()
    execute 'mksession! ' . getcwd() . 'session.vim'
endfunction

fu! RestoreSess()
if filereadable(getcwd() . 'session.vim')
    execute 'so ' . getcwd() . 'session.vim'
    if bufexists(1)
        for l in range(1, bufnr('$'))
            if bufwinnr(l) == -1
                exec 'sbuffer ' . l
            endif
        endfor
    endif
endif
endfunction

if filereadable(getcwd() . 'session.vim')
     autocmd VimLeave * call SaveSess()
     autocmd VimEnter * nested call RestoreSess()
endif
