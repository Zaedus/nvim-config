require('options')
require('plugins')

local utils = require('utils')

--- Settings

vim.cmd('colorscheme moonfly')

--- Keybindings

utils.map("n", "<Tab>", ":wincmd w<CR>")
utils.map("t", "<Tab>", "<C-\\><C-n>:wincmd w<CR>")
utils.map("t", "<Esc>", "<C-\\><C-n>")
utils.map("n", "t", ":vsplit | term<CR>")
