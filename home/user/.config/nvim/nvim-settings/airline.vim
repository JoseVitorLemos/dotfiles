" buffers airline top bar
let g:airline#extensions#tabline#enabled = 1

" theme
let g:airline_theme='base16_gruvbox_dark_soft'

" bind to tab line buffers
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'default'

nnoremap <A-h> :bprevious<CR>
nnoremap <A-l> :bnext<CR>
nnoremap <A-j> :bfirst<CR>
nnoremap <A-k> :blast<CR>
nnoremap <A-q> :bdelete<CR>

