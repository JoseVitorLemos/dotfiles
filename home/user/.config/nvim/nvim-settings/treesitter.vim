lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'html', 'javascript', 'typescript', 'tsx', 'css', 'json', 'c_sharp', 'lua' },
  -- ensure_installed = "all", -- or maintained
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    disable = {} -- list of language that will be disabled
  },
  indent = {
    enable = false
  },
  context_commentstring = {
    enable = true
  },
}
EOF
