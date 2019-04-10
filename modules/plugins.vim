call plug#begin('~/.config/nvim/plugged')

" Standard plugins.
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'airblade/vim-gitgutter'

" Language specific plugins.
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

call plug#end()

