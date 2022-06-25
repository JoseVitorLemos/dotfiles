call plug#begin()
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'kyazdani42/nvim-web-devicons'

  " auto complete
  Plug 'haorenW1025/completion-nvim'
  Plug 'prabirshrestha/asyncomplete.vim'

  " themes
  Plug 'morhetz/gruvbox'
  Plug 'romgrk/barbar.nvim'
  Plug 'nvim-lualine/lualine.nvim'

  " language server
  Plug 'OmniSharp/omnisharp-vim'

  " highlighting
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'ap/vim-css-color' "show colors in code css
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'

  " helps
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'joom/vim-commentary' "gcc comentary
call plug#end()

" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/nvim-cmp' "Autocompletion plugin
" Plug 'hrsh7th/cmp-nvim-lsp' "LSP source for nvim-cmp
" Plug 'valloric/matchtagalways'

