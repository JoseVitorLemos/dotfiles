set syntax
set encoding=utf-8
set number
set relativenumber
set shell=$SHELL
set hidden " show all buffers
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
let mapleader = " " "map leader to Space

" disable comment on insert
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

cnoreabbrev W w " sabe with :W and :w
cnoreabbrev Q q " leave with :Q and :q

" Enable persistent_undo
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.nvim/undo  "directory where the undo files will be stored
endif

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point and (move the win32yank to this folder)
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif

