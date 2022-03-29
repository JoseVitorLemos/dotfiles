" --- Global settings ---
syntax enable " Enable syntax highlight
set termguicolors "Enable nvim colors
set hidden
"set nowrap " Long line as just one line
"set cmdheight=2 " give more spaces for displaying massages
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
"set bg=dark "background dark

let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let NERDTreeWinPos = "right"
let g:NERDTreeWinSize=35

nnoremap <C-m> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<cr>

nnoremap <F9> :source ~/.config/nvim/init.vim<cr>
nnoremap <F10> :PlugInstall<cr>

nnoremap <S-P> :vsplit<Esc> 
nnoremap <S-H> :split<Esc>

" remove quetes
nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P

nnoremap <Leader>' :%s/"/' <Enter>

nnoremap <Leader>rs :g/^$/:delete <Enter>

"qrasfd"

vnoremap  < <gv
vnoremap > >gv


map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

call plug#begin()

  " Vim file system explorer
  Plug 'preservim/nerdtree'
  "Plug 'kyazdani42/nvim-tree.lua'

  " Inicialize language server
  "Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'

  " Syntax highlight
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'pangloss/vim-javascript'    " javaScript support
  "Plug 'leafgarland/typescript-vim' " typeScript syntax
  "Plug 'HerringtonDarkholme/yats.vim'

  " top bars vim
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'romgrk/barbar.nvim'

  " Themes
  Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
  " Plug 'mhartington/oceanic-next'
  "Plug 'morhetz/gruvbox'
  "Plug 'projekt0n/github-nvim-theme'

  " Buffers
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Styles
  Plug 'joom/vim-commentary' " gcc comentary
  Plug 'ap/vim-css-color' " show colors in code css
  Plug 'ryanoasis/vim-devicons' " nerdtree icons
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " colors for nerdtree icons

  " Telescope
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

call plug#end()

let g:LanguageClient_serverCommands = { 'typescript': ['typescript-language-server', '--stdio', '--tsserver-path', 'node_modules/.bin/tsserver'] }

colorscheme nord 

" vim transparent
nnoremap <C-n> :TransparentToggle<cr>
let g:transparent_enabled = v:false
source ~/.config/nvim/lua/transparent.lua
source ~/.config/nvim/lua/transparent.vim



" language server
source ~/.config/nvim/plug-config/lsp-config.lua
"source ~/.config/nvim/plug-config/lsp-autocomplete.lua

"source ~/.config/nvim/plug-config/coc-config.vim
"
" buffers top bar config
source ~/.config/nvim/plug-config/buffer-config.vim

" telescope
source ~/.config/nvim/plug-config/telescope-config.vim
