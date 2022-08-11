call plug#begin()
  Plug 'kyazdani42/nvim-tree.lua'

  " auto complete for nvim
  Plug 'haorenW1025/completion-nvim'
  Plug 'prabirshrestha/asyncomplete.vim'

  " themes
  Plug 'morhetz/gruvbox'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'yamatsum/nvim-web-nonicons'

  " language server
  Plug 'OmniSharp/omnisharp-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'puremourning/vimspector'

  " highlighting
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'ap/vim-css-color' "show colors in code css
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'jlcrochet/vim-razor'

  " helps
  Plug 'joom/vim-commentary' "gcc comentary
call plug#end()
