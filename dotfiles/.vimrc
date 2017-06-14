
filetype plugin indent on
execute pathogen#infect()

set background=dark
"set nocompatible

set laststatus=2


colorscheme badwolf
syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number

set cursorline
set showcmd
set wildmenu
set showmatch
"
let mapleader=","
"
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

"" Synastics settings

"set statusline+=%#warningmsg#

"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

autocmd BufWritePost *.py call Flake8()

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType ini setlocal ts=2 sts=2 sw=2 expandtab

fun! StripTrailingWhitespace()
    " Don't strip on these filetypes
    if &ft =~ 'diff'
        return
    endif
    %s/\s\+$//e
endfun

autocmd BufWritePre * call StripTrailingWhitespace()
