-- default options
local opts = { noremap = true, silent = true }

-- diagnostics
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
