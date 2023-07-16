" FORKED: https://github.com/kentarosasaki/vim-emacs-bindings

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INSERT MODE KEY MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cursor movements
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
"" M-f
execute "set <M-char-102>=\ef"
imap <M-char-102> <C-o>e<Right>
"" M-b
execute "set <M-char-98>=\eb"
imap <M-char-98> <C-o>b
imap <C-f> <Right>
imap <C-a> <C-o>:call <SID>home()<CR>
imap <C-e> <End>
" deletion movements
imap <C-d> <Del>
" kill & yank
imap <C-k> <C-o>y$<C-r>=<SID>kill()<CR>
imap <C-y> <C-o>p
" undo
imap <C-_> <C-o>u
" begin/end buffer movements (M-<, M->)
execute "set <M-char-60>=\e<"
imap <M-char-60> <C-o>1G
execute "set <M-char-62>=\e>"
imap <M-char-62> <C-o>G<C-o>$
" auto completion remapping (M-/)
execute "set <M-/>=\e/"
imap <M-/> <C-x><C-n><ESC>a

function! s:home()
    let start_column = col('.')
    normal! ^
    if col('.') == start_column
        normal! 0
    endif
    return ''
endfunction

function! s:kill()
    let [text_before, text_after] = s:split_line()
    if len(text_after) == 0
        normal! J
    else
        call setline(line('.'), text_before)
    endif
    return ''
endfunction

function! s:split_line()
    let line_text = getline(line('.'))
    let text_after  = line_text[col('.')-1 :]
    let text_before = (col('.') > 1) ? line_text[: col('.')-2] : ''
    return [text_before, text_after]
endfunction
