lua << EOF
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { 'csharp_ls' }
})

require('lspconfig').csharp_ls.setup {}
EOF
