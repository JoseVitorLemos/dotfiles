" buffers airline top bar
let g:airline#extensions#tabline#enabled = 1

" bind to tab line buffers
let g:airline#extensions#tabline#left_sep = '  '
let g:airline#extensions#tabline#left_alt_sep = '|'
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

" nnoremap <silent>    <A-q> :BufferClose<CR>

" " Buffer next tab
" nnoremap <silent>    <A-h> :BufferPrevious<CR>

" " buffer previous tab
" nnoremap <silent>    <A-l> :BufferNext<CR>

" " Re-order to previous/next
" nnoremap <silent>    <A-,> :BufferMovePrevious<CR>
" nnoremap <silent>    <A-.> :BufferMoveNext<CR>

" " " Goto buffer in position...
" nnoremap <silent>    <A-1> :BufferGoto 1<CR>
" nnoremap <silent>    <A-2> :BufferGoto 2<CR>
" nnoremap <silent>    <A-3> :BufferGoto 3<CR>
" nnoremap <silent>    <A-4> :BufferGoto 4<CR>
" nnoremap <silent>    <A-5> :BufferGoto 5<CR>
" nnoremap <silent>    <A-6> :BufferGoto 6<CR>
" nnoremap <silent>    <A-7> :BufferGoto 7<CR>
" nnoremap <silent>    <A-8> :BufferGoto 8<CR>
" nnoremap <silent>    <A-9> :BufferLast<CR>

" " Sort automatically by...
" nnoremap <silent> <Space>bn :BufferOrderByBufferNumber<CR>
" nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
" nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
" nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>
