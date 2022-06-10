nnoremap <silent>    <A-q> :BufferClose<CR>

" Buffer next tab.
nnoremap <silent>    <A-h> :BufferPrevious<CR>

" Buffer previous tab.
nnoremap <silent>    <A-l> :BufferNext<CR>

"Re-order to previous/next
nnoremap <silent>    <A-,> :BufferMovePrevious<CR>
nnoremap <silent>    <A-.> :BufferMoveNext<CR>

" Goto buffer in position.
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>

" Sort automatically by.
nnoremap <silent> <Space>bn :BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>

