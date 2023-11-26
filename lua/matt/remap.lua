-- This remaps the netrw explorer cmd to 'leader pv'
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
