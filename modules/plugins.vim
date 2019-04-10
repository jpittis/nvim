call plug#begin('~/.config/nvim/plugged')

" Standard plugins.
Plug 'altercation/vim-colors-solarized'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Language specific plugins.
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

call plug#end()

