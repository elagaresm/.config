require('nvim-lsp-installer').setup {
    automatic_installation = true
}

local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.sumneko_lua.setup {}
lspconfig.tsserver.setup {}
lspconfig.cssls.setup {}
lspconfig.html.setup {}
lspconfig.pyright.setup {}
