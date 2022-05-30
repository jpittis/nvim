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
" Use leader-i for type information.
nnoremap <silent> <leader>i :call CocActionAsync('doHover')<cr>
" Install some plugins by default.
let g:coc_global_extensions = ['coc-eslint', 'coc-tsserver',
      \'coc-json', 'coc-prettier', 'coc-go']
" Next and previous error.
nmap <silent> [e <Plug>(coc-diagnostic-prev)
nmap <silent> ]e <Plug>(coc-diagnostic-next)
" Use gt to toggle to Go test file.
nmap gt :call CocAction('runCommand', 'go.test.toggle')<CR>
" Apply AutoFix (e.g. add import) to problem on current line.
nmap <leader>qf <Plug>(coc-fix-current)
" Run the closest test with leader-t.
nmap <silent> <leader>t :TestNearest<CR>
