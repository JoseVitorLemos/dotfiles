map <silent> <F1> :source ~/.config/nvim/init.vim<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <C-Up> :resize -4<CR>
nnoremap <C-Down> :resize +4<CR>
nnoremap <C-Left> :vertical resize -4<CR>
nnoremap <C-Right> :vertical resize +4<CR>

nnoremap <S-P> :vsplit<Esc> 
nnoremap <S-H> :split<Esc>

vnoremap < <gv
vnoremap > >gv

inoremap <C-c> console.log(
inoremap <C-d> describe('', () => {})
inoremap <C-t> test('', () => {})<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" highlight and search word
function! s:getSelectedText()
  let l:old_reg = getreg('"')
  let l:old_regtype = getregtype('"')
  norm gvy
  let l:ret = getreg('"')
  call setreg('"', l:old_reg, l:old_regtype)
  exe "norm \<Esc>"
  return l:ret
endfunction

vnoremap <silent> * :call setreg("/",
    \ substitute(<SID>getSelectedText(),
    \ '\_s\+',
    \ '\\_s\\+', 'g')
    \ )<Cr>n

vnoremap <silent> # :call setreg("?",
    \ substitute(<SID>getSelectedText(),
    \ '\_s\+',
    \ '\\_s\\+', 'g')
    \ )<Cr>n
