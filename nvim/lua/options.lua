vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4 -- tabs inserted in normal mode with '>'
vim.opt.softtabstop = 4 -- tabs inserted in insert mode default = tabstop
vim.opt.expandtab = true -- changes tab to spaces
vim.opt.scrolloff = 7
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.wrap = false
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.textwidth = 80
vim.opt.foldcolumn = "1"
vim.opt.termguicolors = true
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

vim.cmd [[
set clipboard^=unnamed
]]