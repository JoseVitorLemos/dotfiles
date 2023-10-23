let g:OmniSharp_server_use_net6 = 1
"let g:OmniSharp_highlighting = 0 " disabke syntax highlighting
let g:OmniSharp_popup = 1 " documentation window default
let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_prefer_global_sln = 1

"let g:OmniSharp_server_path = '/home/rick/.cache/omnisharp-vim/omnisharp-roslyn/run'

augroup omnisharp_commands
  autocmd!

  " The following commands are contextual, based on the cursor position.
  autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
  autocmd FileType cs nmap <silent> <buffer> gvd <cmd>:vsplit<cr> <Plug>(omnisharp_go_to_definition)
  autocmd FileType cs nmap <silent> <buffer> gi <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> gvi <cmd>:vsplit<cr> <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> K <Plug>(omnisharp_documentation)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ft <Plug>(omnisharp_code_format)
  autocmd FileType cs nmap <silent> <buffer> gp <Plug>(omnisharp_preview_definition)
  autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  autocmd FileType cs imap <silent> <buffer> <F8> <cmd>:OmniSharpRestartServer
  autocmd FileType cs nmap <silent> <buffer> <Leader>use <Plug>(omnisharp_fix_usings)
augroup END

" Tab completion asyncomplete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)
