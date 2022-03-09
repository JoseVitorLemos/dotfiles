" --- Global settings ---
syntax enable " Enable syntax highlight
set termguicolors " use turn color background vim for use cursorLine
set hidden
set nowrap " Long line as just one line
set encoding=utf8
set number
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
set incsearch
set ignorecase
set smartcase
set cursorline  " will highlight the current line in every window and update the highlight as the cursor moves
set nohlsearch "clean search highlightin
set clipboard=unnamedplus
set pastetoggle=<F2>
let mapleader = " " " map leader to Space

let NERDTreeShowHidden=1
let NERDTreeWinPos = "right"
let g:NERDTreeWinSize=40

nnoremap <C-m> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<cr>

nnoremap <S-P> :vsplit<Esc> 
nnoremap <S-H> :split<Esc>

vnoremap < <gv
vnoremap > >gv

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

call plug#begin()

  Plug 'preservim/nerdtree'

  " Inicialize language server
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  " Plug 'neovim/nvim-lspconfig'
  " Plug 'williamboman/nvim-lsp-installer'

  " Suporte Language
  Plug 'pangloss/vim-javascript'    " javaScript support
  Plug 'leafgarland/typescript-vim' " typeScript syntax

  " top bars vim
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'

  " Themes
  Plug 'arcticicestudio/nord-vim'
  " Plug 'mhartington/oceanic-next'

  " Buffers
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Styles
  Plug 'ap/vim-css-color' " show colors in code css
  Plug 'joom/vim-commentary' " gcc comentary
  Plug 'ryanoasis/vim-devicons' " nerdtree icons
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " colors for nerdtree icons

  " Telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " load image nvim
  Plug 'edluffy/hologram.nvim'

call plug#end()

colorscheme nord

" coc.nvim
source ~/.config/nvim/plug-config/coc-config.vim
" buffers top bar config
source ~/.config/nvim/plug-config/buffer-config.vim
" telescope
source ~/.config/nvim/plug-config/telescope-config.vim
