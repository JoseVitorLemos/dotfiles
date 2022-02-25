set paste
set encoding=UTF-8
set shell=$SHELL
syntax on " turn on syntax highlighting
syntax enable
set noswapfile 
set noexpandtab
set copyindent
set preserveindent
set autoindent " automatically indent the next new line to match the indent of the previous one
set tabstop=2 " all the new tab characters entered will be changed to spaces, this case with two spaces
set shiftwidth=2 " for ident tabs
set softtabstop=2 "  how many columns (=spaces) the cursor moves right when you press <Tab>, and how many columns it moves left when you press <BS> (backspace)
set number
set smartindent
set gdefault
set showmatch
set incsearch
set ignorecase
set smartcase
set termguicolors " use turn color background vim for use cursorLine
set cursorline  " will highlight the current line in every window and update the highlight as the cursor moves
set nohlsearch "clean search highlightin

let NERDTreeShowHidden=1
let NERDTreeWinPos = "right"
let g:NERDTreeWinSize=40

" smart tab lines vim-airline
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


nnoremap <C-m> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<cr>

nnoremap <S-P> :vsplit<Esc> 
nnoremap <S-H> :split<Esc>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

call plug#begin()

  Plug 'preservim/nerdtree'
  Plug 'mhartington/oceanic-next'
  Plug 'arcticicestudio/nord-vim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme nord

source ~/.config/nvim/plug-config/lsp-config.vim





