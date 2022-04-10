" buffers airline top bar
let g:airline#extensions#tabline#enabled = 1

" bind to tab line buffers
"let g:airline#extensions#tabline#left_sep = '  '
"let g:airline#extensions#tabline#right_sep = '  '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail'

nnoremap <A-h> :bprevious<CR>
nnoremap <A-l> :bnext<CR>
nnoremap <A-j> :bfirst<CR>
nnoremap <A-k> :blast<CR>
nnoremap <A-q> :bdelete<CR>

nnoremap <A-1> :buffer 1<CR>
nnoremap <A-3> :b 3<CR>
nnoremap <A-5> :b 5<CR>
nnoremap <C-2> :b 2<CR>
nnoremap <A-7> :b 7<CR>

