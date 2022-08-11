nnoremap <silent> <F1> :source ~/.config/nvim/init.vim<CR>
nnoremap <silent> <F2> :PlugInstall<CR>
nnoremap <silent> <F3> :PlugClean<CR>

nmap Z i<cr><esc><cr>

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

inoremap <nowait> jj <ESC>
inoremap <ESC> <Nop>
nnoremap ww :w <Enter> 
nnoremap qq :q <Enter> 
nnoremap QQ :q! <Enter> 

cnoreabbrev W w " save with :W and :w
cnoreabbrev Q q " leave with :Q and :q

" remaps
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Simple snipets
inoremap <C-c> Console.WriteLine();<Left><Left>
inoremap <C-d> describe('', () => {<Enter>})
inoremap <C-t> test('', () => {<Enter>})<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

" Highlight finder.
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Enter visual block mode
nnoremap X <c-v>

" WSL integration copy and paste
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

