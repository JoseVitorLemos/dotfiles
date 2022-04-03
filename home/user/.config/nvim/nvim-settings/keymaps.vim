set syntax
set hidden
set encoding=utf-8
set number
set relativenumber
set shell=$SHELL
set noswapfile 
set expandtab " Convert tabs in spaces
set copyindent
set preserveindent
set autoindent " automatically indent the next new line to match the indent of the previous one
set noai
set tabstop=2 " all the new tab characters entered will be changed to spaces, this case with two spaces
set shiftwidth=2 " for ident tabs
set softtabstop=2 "  how many columns (=spaces) the cursor moves right when you press <Tab>, and how many columns it moves left when you press <BS> (backspace)
set smartindent
set gdefault
set showmatch
"set incsearch " ignore upercase search
set nohlsearch "clean search highlightin
set ignorecase
set smartcase
set cursorline  " will highlight the current line in every window and update the highlight as the cursor moves
set clipboard=unnamedplus
let mapleader = " " " map leader to Space
"hi normal guibg=000000

cnoreabbrev W w
cnoreabbrev Q q

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
