"npm install -g typescript typescript-language-server diagnostic-languageserver eslint_d

lua << EOF
  local nvim_lsp = require("lspconfig")
  local completion = require("completion")

  local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local opts = { noremap=true, silent=true }
end
 vim.lsp.handlers['textDocument/references'] = vim.lsp.with(
	on_references, {
		-- Use location list instead of quickfix list
 		loclist = false,
 	}
 )
   nvim_lsp.tsserver.setup {
   on_attach = completion.on_attach,
   handlers = {
      ['textDocument/publishDiagnostics'] = function() end,
    },

  }
EOF

let g:completion_enable_auto_popup = 0

nnoremap <silent> gD <plug>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gd <plug>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gca   <plug>:Telescope lsp_code_actions<CR>
nnoremap <silent> gr <plug>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <plug>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gh    <plug>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gR    <plug>lua vim.lsp.buf.rename()<CR>
nnoremap <silent><leader>ro <plug>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> <C-k> <plug>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <plug>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <plug>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap go <c-o>
