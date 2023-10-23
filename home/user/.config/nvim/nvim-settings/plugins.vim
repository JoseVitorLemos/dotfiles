call plug#begin()
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'nvim-tree/nvim-tree.lua'

  " auto complete for nvim
  Plug 'haorenW1025/completion-nvim'
  Plug 'prabirshrestha/asyncomplete.vim'

  " themes
  Plug 'morhetz/gruvbox'
  "Plug 'tomasiser/vim-code-dark'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'yamatsum/nvim-web-nonicons'

  " buffer themes
  "Plug 'romgrk/barbar.nvim'
  Plug 'vim-airline/vim-airline'

  " language server
  Plug 'OmniSharp/omnisharp-vim'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' } 
  Plug 'puremourning/vimspector'

  " Linting/error highlighting
  Plug 'dense-analysis/ale'

  " highlighting
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'ap/vim-css-color' "show colors in code css
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'jlcrochet/vim-razor'

  " LSP 
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'neovim/nvim-lspconfig'

  " helps
  Plug 'joom/vim-commentary' "gcc comentary
call plug#end()
