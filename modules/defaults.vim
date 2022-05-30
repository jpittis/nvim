let mapleader = ','

syntax on
filetype plugin indent on
set nocompatible

set hlsearch
" Use ctrl-l for window movement in tmux so rebind clear to <leader>-l.
nnoremap <leader>l :nohl<CR><C-L>

set number
set ruler
set showmode

set ignorecase
set smartcase
set incsearch

set showmatch

set cursorline

set noerrorbells

set tw=90

set smarttab
set smartindent
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set history=1000

set completeopt=menuone,menu,longest
set wildmenu
set completeopt+=longest

set splitbelow
set splitright

set cmdheight=1

set scrolloff=5

tnoremap <Esc> <C-\><C-n>
