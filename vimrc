set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI Elements
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nu " line number
set wildmenu " enhanced command-line completion experience
set showcmd " show last command
set laststatus=2 " status line, 2: always
set ruler " row,col in status line
set colorcolumn=120
highlight ColorColumn ctermbg=magenta
" https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tab setup
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" folding
set foldmethod=indent
set nofoldenable
" indent setup
set autoindent
" syntax highlighting
syntax enable
" search options
set hlsearch
set incsearch
" trailing whitespaces
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/
autocmd BufWritePre * :%s/\s\+$//e " removing all trailing whitespace
" misc
set autoread " detect local file change
set formatoptions+=j " Delete comment characters when joining lines.
set backspace=2 " make backspace work on soem system, same as :set backspace=indent,eol,start
" file type plugins
filetype plugin on
filetype indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F4> <ESC>:Files<CR>
