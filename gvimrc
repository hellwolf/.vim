" use hellwolf color scheme
colorscheme hellwolf

" handy copy and paste command
map <C-C><C-C> "+y
imap <C-C><C-C> <ESC>"+ya
map <C-C><C-X> "+x
imap <C-C><C-X> <ESC>"+xa
map <C-C><C-V> "+gP
imap <C-C><C-V> <SPACE><ESC>"+gPxa
" also: https://stackoverflow.com/questions/4532110/gvim-easy-copying-into-system-clipboard
nnoremap yy yy"+yy
vnoremap y ygv"+y
