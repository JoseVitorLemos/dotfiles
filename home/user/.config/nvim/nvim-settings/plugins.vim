call plug#begin()
  Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'npm install --frozen-lockfile' }
  " Plug 'neovim/nvim-lspconfig'
  " Plug 'williamboman/nvim-lsp-installer'
  " Plug 'haorenW1025/completion-nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  "Plug 'pangloss/vim-javascript'    " javaScript support
  "Plug 'preservim/nerdtree'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'kyazdani42/nvim-web-devicons'
  "Plug 'ryanoasis/vim-devicons' " nerdtree icons
  "Plug 'arcticicestudio/nord-vim'
  Plug 'morhetz/gruvbox'
  "Plug 'projekt0n/github-nvim-theme'
  " Plug 'romgrk/barbar.nvim'
  " Plug 'kyazdani42/nvim-web-devicons'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'joom/vim-commentary' " gcc comentary
  Plug 'ap/vim-css-color' " show colors in code css
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'tribela/vim-transparent'
call plug#end()
