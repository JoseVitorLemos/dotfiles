lua << EOF
  vim.opt.listchars:append("space:⋅")
  vim.api.nvim_command("let g:indentLine_fileTypeExclude = ['text', 'markdown', 'help']")
  vim.api.nvim_command("let g:indentLine_bufNameExclude = ['STARTIFY', 'NVIMTREE']")

  require('ibl').setup {
    indent = { highlight = highlight }
  }
EOF
