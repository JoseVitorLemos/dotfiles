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
set nohlsearch "clean search highlightin
set ignorecase " ignore upercase search
set smartcase
set cursorline  " will highlight the current line in every window and update the highlight as the cursor moves
set clipboard=unnamedplus
let mapleader = " " " map leader to Space
"hi normal guibg=000000

cnoreabbrev W w " sabe with :W and :w
cnoreabbrev Q q " leave with :Q and :q

source ~/.config/nvim/nvim-settings/keymaps.vim
source ~/.config/nvim/nvim-settings/plugins.vim
source ~/.config/nvim/nvim-settings/themes.vim
source ~/.config/nvim/nvim-settings/lsp/lsp.vim
source ~/.config/nvim/nvim-settings/lsp/lsp_config.vim
source ~/.config/nvim/nvim-settings/lsp/nvim_lsp_installer.vim
source ~/.config/nvim/nvim-settings/buffer_config.vim
source ~/.config/nvim/nvim-settings/nvim_tree.vim
source ~/.config/nvim/nvim-settings/treesitter.vim
source ~/.config/nvim/nvim-settings/telescope.vim
