vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4 -- tabs inserted in normal mode with '>'
vim.opt.softtabstop = 4 -- tabs inserted in insert mode default = tabstop
vim.opt.expandtab = true -- changes tab to spaces
vim.opt.scrolloff = 7
vim.opt.sidescrolloff = 8
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.wrap = false
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.textwidth = 80
vim.opt.foldcolumn = "1"
vim.opt.termguicolors = true
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.updatetime = 300
vim.opt.clipboard = "unnamedplus"
-- vim.opt.cmdheight = 1
-- vim.opt.showtabline = 1
vim.opt.smartindent = true
-- vim.o.timeoutlen = 500
vim.opt.undofile = true
vim.o.background = "dark"
-- vim.cmd("syntax off")

vim.cmd[[
set guicursor=i:block
syntax off
]]
