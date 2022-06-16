map <silent> <F1> :source ~/.config/nvim/init.vim<CR>
map <silent> <F2> :PlugInstall<CR>
map <silent> <F3> :PlugClean<CR>

nmap Z i<cr><esc>k$

" Prevent x from overriding what's is the clipboard.
nnoremap x "_x
xnoremap X "_X   

nnoremap <C-Space> i<CR><ESC>

nnoremap <C-a> ggVG

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

" Simple snipets
inoremap <C-c> console.log(
inoremap <C-d> describe('', () => {<Enter>})
inoremap <C-t> test('', () => {<Enter>})<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" Highlight finder.
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Transparent keys.
let g:transparent_enabled = v:true
nnoremap <C-n> :TransparentToggle<cr>

" Enter visual block mode
nnoremap X <c-v>

let g:clipboard = {
  \   'name': 'win32yank-wsl',
  \   'copy': {
  \      '+': 'win32yank.exe -i --crlf',
  \      '*': 'win32yank.exe -i --crlf',
  \    },
  \   'paste': {
  \      '+': 'win32yank.exe -o --lf',
  \      '*': 'win32yank.exe -o --lf',
  \   },
  \   'cache_enabled': 0,
  \ }

