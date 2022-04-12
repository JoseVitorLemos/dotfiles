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


function bufferline#highlight#setup()
   let fg_target = 'red'

   let fg_current  = s:fg(['Normal'], '#efefef')
   let fg_visible  = s:fg(['TabLineSel'], '#efefef')
   let fg_inactive = s:fg(['TabLineFill'], '#888888')

   let fg_modified = s:fg(['WarningMsg'], '#efefef')
   let fg_special  = s:fg(['Special'], '#599eff')
   let fg_subtle   = s:fg(['NonText', 'Comment'], '#555555')

   let bg_current  = s:bg(['Normal'], 'none')
   let bg_visible  = s:bg(['TabLineSel', 'Normal'], 'none')

   "      Current: current buffer
   "      Visible: visible but not current buffer
   "     Inactive: invisible but not current buffer
   "        -Icon: filetype icon
   "       -Index: buffer index
   "         -Mod: when modified
   "        -Sign: the separator between buffers
   "      -Target: letter in buffer-picking mode
   call s:hi_all([
   \ ['BufferCurrent',        fg_current,  bg_current],
   \ ['BufferCurrentIndex',   fg_special,  bg_current],
   \ ['BufferCurrentMod',     fg_modified, bg_current],
   \ ['BufferCurrentSign',    fg_special,  bg_current],
   \ ['BufferCurrentTarget',  fg_target,   bg_current,   'bold'],
   \ ['BufferVisible',        fg_visible,  bg_visible],
   \ ['BufferVisibleIndex',   fg_visible,  bg_visible],
   \ ['BufferVisibleMod',     fg_modified, bg_visible],
   \ ['BufferVisibleSign',    fg_visible,  bg_visible],
   \ ['BufferVisibleTarget',  fg_target,   bg_visible,   'bold'],
   \ ['BufferInactive',       fg_inactive, bg_inactive],
   \ ['BufferInactiveIndex',  fg_subtle,   bg_inactive],
   \ ['BufferInactiveMod',    fg_modified, bg_inactive],
   \ ['BufferInactiveSign',   fg_subtle,   bg_inactive],
   \ ['BufferInactiveTarget', fg_target,   bg_inactive,  'bold'],
   \ ['BufferTabpages',       fg_special,  bg_inactive, 'bold'],
   \ ['BufferTabpageFill',    fg_inactive, bg_inactive],
   \ ])

   call s:hi_link([
   \ ['BufferCurrentIcon',  'BufferCurrent'],
   \ ['BufferVisibleIcon',  'BufferVisible'],
   \ ['BufferInactiveIcon', 'BufferInactive'],
   \ ['BufferOffset',       'BufferTabpageFill'],
   \ ])
endfunction

