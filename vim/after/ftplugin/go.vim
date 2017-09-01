" Set leader shortcut to a comma ','. By default it's the backslash
"let mapleader = ','

" vim-go
"let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1

" Search referrers with ctrl-\s
nnoremap <C-\>s :GoReferrers<cr>

" Search functions called by this function (callees)
nnoremap <C-\>d :GoCallees<cr>

" Search functions calling this function (callers)
nnoremap <C-\>c :GoCallers<cr>

" Open :GoDeclsDir with ctrl-g
nnoremap <C-g> :GoDeclsDir<cr>
inoremap <C-g> <esc>:<C-u>GoDeclsDir<cr>

" Open :GoDescribe with ctrl-s
nnoremap <C-s> :GoDescribe<cr>

" Open :GoImplements with ctrl-i
nnoremap <C-i> :GoImplements<cr>

" Show by default 4 spaces for a tab
setlocal noexpandtab tabstop=4 shiftwidth=4

" :GoBuild and :GoTestCompile
nmap <leader>b :<C-u>call <SID>build_go_files()<CR>

" :GoTest
nmap <leader>t  <Plug>(go-test)

" :GoRun
nmap <leader>r  <Plug>(go-run)

" :GoDoc
nmap <Leader>d <Plug>(go-doc)

" :GoCoverageToggle
nmap <Leader>c <Plug>(go-coverage-toggle)

" :GoInfo
nmap <Leader>i <Plug>(go-info)

" :GoMetaLinter
nmap <Leader>l <Plug>(go-metalinter)

" :GoDef but opens in a vertical split
nmap <Leader>v <Plug>(go-def-vertical)
" :GoDef but opens in a horizontal split
nmap <Leader>s <Plug>(go-def-split)

" :GoAlternate  commands :A, :AV, :AS and :AT
command! -bang A call go#alternate#Switch(<bang>0, 'edit')
command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
command! -bang AS call go#alternate#Switch(<bang>0, 'split')
command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
