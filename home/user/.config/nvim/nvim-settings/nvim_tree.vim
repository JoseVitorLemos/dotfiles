nnoremap <C-t> :NvimTreeToggle<CR>
nnoremap <Space>r :NvimTreeRefresh<CR>
nnoremap <C-f> :NvimTreeFindFile<CR>

lua << EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

local function on_attach(bufnr)
  local api = require 'nvim-tree.api'

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  vim.keymap.set('n', 'V',          api.node.open.vertical,                opts('Open: Vertical Split'))
  vim.keymap.set('n', '<C-x>',      api.node.open.horizontal,              opts('Open: Horizontal Split'))
  vim.keymap.set('n', 'D',          api.tree.reload,                       opts('Refresh'))
  vim.keymap.set('n', '<C-k>',      api.fs.trash,                          opts('Trash'))
  vim.keymap.set('n', '<C-r>',      api.fs.rename,                         opts('Rename'))
  vim.keymap.set('n', 'y',          api.fs.copy.filename,                  opts('Copy Name'))
  vim.keymap.set('n', 'Y',          api.fs.copy.absolute_path,             opts('Copy Absolute Path'))

  api.config.mappings.default_on_attach(bufnr)
end

require("nvim-tree").setup({
  on_attach = on_attach,
  disable_netrw = true, -- disables netrw completely
  auto_reload_on_write = true,
  hijack_netrw = true, -- Hijack netrw window on startup. prevents netrw from automatically opening when opening directories (but lets you keep its other utilities)
  hijack_cursor = false, -- hijack the cursor in the tree to put it at the start of the filename
  auto_reload_on_write = true,
  open_on_tab = false,
  update_cwd = false, -- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
  diagnostics = {
    enable = false,
  },
  update_focused_file = {  -- update the focused file on `BufEnter`, un-collapses the folders recursively until it finds the file
    enable = false,
    -- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
    -- only relevant when `update_focused_file.enable` is true
    update_cwd = false,
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  view = {
    side = 'right',
    width = 40,
    preserve_window_proportions = false,
    relativenumber = false,
    number = false,
    signcolumn = "no"
  },
  filters = {
    dotfiles = false,
    custom = { "node_modules", '.cache', 'dist', '.dist', 'build', 'bin', 'obj' }
  },
  actions = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = true,
      resize_window = true,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
          buftype  = { "nofile", "terminal", "help", },
        }
      }
    }
  },
  renderer = {
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
        },
      },
    icons = {
      webdev_colors = true,
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    glyphs = {
      default = "",
      symlink = "",
      folder = {
        arrow_closed = "",
        arrow_open = "",
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = "",
        symlink_open = "",
        },
      git = {
        unstaged = "",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = "U",
        deleted = "",
        ignored = "◌",
        },
      },
    },
  },
})
local opts = { silent = true, noremap = true }
EOF
