let g:go_fmt_command = "goimports"

let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 

autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test-func)
autocmd Filetype go nmap <leader>s :call go#alternate#Switch(0, 'edit')<CR>

" Test shortcut does not work well with the testify require package. Keep this here until
" the vim-go bug is fixed.
let g:go_jump_to_error = 0

" This is kinda sketch cause it auto saves... but it's super useful. It means I don't need
" to save the file before I use the build, run or test shortcut.
set autowrite

" Build the file to make sure it compiles without error.
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

let g:go_list_type = "quickfix"

" Use gd (already a default) to go to definition and now gb to go back.
autocmd FileType go nnoremap <buffer> <silent> gb :call go#def#StackPop(v:count1)<CR>
