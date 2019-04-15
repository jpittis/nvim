" --- colour scheme
set background=dark
colorscheme solarized
set t_Co=256

" --- fzf
let $FZF_DEFAULT_OPTS = "--preview 'head -100 {}'"
nnoremap <Leader>o :FZF<CR>

" --- deoplete
let g:deoplete#enable_at_startup = 1

function! CleverTab()"{{{
    if pumvisible()
      return "\<c-n>"
    else
      return "\<TAB>"
    endif
endfunction"}}}

inoremap <silent> <tab> <c-r>=CleverTab()<cr>

" --- tmux navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
