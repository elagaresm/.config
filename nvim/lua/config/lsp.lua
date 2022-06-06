require('nvim-lsp-installer').setup {
    automatic_installation = true
}

local lspconfig = require('lspconfig')

lspconfig.sumneko_lua.setup {on_attach = require "lsp-format".on_attach} -- lua
lspconfig.tsserver.setup {on_attach = require "lsp-format".on_attach} -- javascript and typescript
lspconfig.html.setup {on_attach = require "lsp-format".on_attach} -- html
