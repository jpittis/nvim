" --- colour scheme
set background=dark
colorscheme solarized
set t_Co=256

" --- fzf
let $FZF_DEFAULT_OPTS = "--preview 'head -100 {}'"
nnoremap <Leader>o :FZF<CR>
