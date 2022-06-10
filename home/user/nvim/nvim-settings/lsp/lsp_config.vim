" npm i -g typescript typescript-language-server // to install ts lenguage
" LspInstall csharp_ls // to install c# lenguage
lua << EOF
local util = require "lspconfig/util"
require 'lspconfig'.csharp_ls.setup{
    on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
    end,
    root_dir = util.root_pattern(".git", "tsconfig.json", "jsconfig.json", "cs"),
}
EOF
