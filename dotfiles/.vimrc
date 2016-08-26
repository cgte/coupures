syntax on
filetype indent plugin on
set modeline
set background=dark
set nocompatible

execute pathogen#infect()

colorscheme badwolf
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set number

"set cursorline
set showcmd
set wildmenu
"set showmatch
"
let mapleader=","
"
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
"
"" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

autocmd BufWritePost *.py call Flake8()

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd BufWritePre * %s/\s\+$//e


