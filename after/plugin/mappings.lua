local wk = require("which-key")

wk.register({
    ["<leader>?"] = { "Cheatsheet" },
    ["<leader>w"] = { "<cmd>w<cr>", "Save" },
    J = { "mzJ`z", "Append Line Above" },
    ["<leader>a"] = { "Toggle Aerial" },
    ["<leader>h"] = { "Toggle Harpoon" },
    ["<leader>s"] = { "Telescope Search" },
    ["<leader>n"] = { "No Neck Pain" },
    ["<C-P>"] = { "Git Files" },
    ["<C-h>"] = { "Go to Harpoon 1" },
    ["<C-t>"] = { "Go to Harpoon 2" },
    ["<C-n>"] = { "Go to Harpoon 3" },
    ["<C-s>"] = { "Go to Harpoon 4" },
    ["<leader>p"] = { "+Files" },
    ["<leader>pf"] = { "Open Telescope" },
    ["<leader>ps"] = { "GREP Search" },
    ["<leader>u"] = { "Toggle UndoTree" },
    ["<leader>Y"] = { "Yank to System Buff" },
    ["<leader>f"] = { "Format w/ LSP" },
    ["<leader>q"] = { "<cmd>confirm q <cr>", "Quit" },
    ["<leader>t"] = { "<cmd>Telescope toggleterm_manager <cr>jj", "Terminal Manager" },
    ["gcc"] = { "Comment Line" },
    ["gbc"] = { "Comment Block" },
})
wk.register({
    J = { "Move Line Down" },
    K = { "Move Line Up" },
    ["gc"] = { "Comment Line" },
    ["gb"] = { "Comment Block" }
}, { mode = "v" })
