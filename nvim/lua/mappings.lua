-- mapping <Leader> to <Space>
local map = vim.keymap.set
map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map({ "i" }, "kj", "<Escape>", { silent = true })
