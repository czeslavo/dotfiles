" add pathogen
execute pathogen#infect()

" encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi comatibility
set nocompatible

" autoindent
set autoindent
set smartindent

" tabs
set tabstop=4
set shiftwidth=4
set expandtab

" wrap lines
set textwidth=120

" colors/highlighting
set t_Co=16
syntax enable
filetype on
set background=dark
colorscheme solarized

" line numbers
set number

" highlight braces
set showmatch

" make backspace normal
set backspace=indent,eol,start

" don't make swp files
set noswapfile

" highlight trailing whitespace
let c_space_errors = 1

" remove trailing whitespaces
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" ttcn3 support
au BufNewFile,BufRead *.ttcn3 set filetype=ttcn
let ttcn_fold = 1
