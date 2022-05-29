" Colour scheme.
set background=dark
colorscheme solarized
set t_Co=256

" All things fzf.
let $FZF_DEFAULT_OPTS = "--preview 'head -100 {}'"
nnoremap <Leader>o :FZF<CR>

function! CleverTab()"{{{
    if pumvisible()
      return "\<c-n>"
    else
      return "\<TAB>"
    endif
endfunction"}}}

inoremap <silent> <tab> <c-r>=CleverTab()<cr>

" For tmux navigation.
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" Use gd to go to definiton, and C-o to go back.
nmap gd :call CocActionAsync('jumpDefinition')<CR>
" Import on save.
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
" Use leader-t for type information.
nnoremap <silent> <leader>t :call CocActionAsync('doHover')<cr>
