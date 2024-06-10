vim.g.mapleader = " "
-- This remaps the netrw explorer cmd to 'leader pv'
vim.keymap.set("n", "<leader>pv", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>jj")
vim.keymap.set("n", "<leader>ph", "<cmd>Telescope find_files hidden=true<cr>", { desc = "Find Hidden Files" })

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Move things up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- append below to end without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- half page jumping up and down
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half Page Jump Down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half Page Jump Up" })

-- search terms stay in the middle
vim.keymap.set("n", "n", "nzzzv", { desc = "Next Match" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev Match" })

-- greatest remap ever - prevent overwrite of paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Prevent Paste Overwrite" })

-- next greatest remap ever : asbjornHaland - lets you yank to system
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y", { desc = "Yank to Sys" })
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- more delete to void goodness
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- keep you from going to Q
vim.keymap.set("n", "Q", "<nop>")

-- telescope mappings -- format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- lets you replace the word you were on everywhere it occurs
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace All" })

vim.keymap.set("n", "<leader>c", ":bd!<cr>", { desc = "Close Buffer" })

-- prev / next buffer
vim.keymap.set("n", "<S-Tab>", ":bprev<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<Tab>", ":bnext<cr>", { desc = "Next Buffer" })
