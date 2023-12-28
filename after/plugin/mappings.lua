local wk = require("which-key")

wk.register({
    ["<leader>w"] = { "<cmd>w<cr>", "Save" },
    -- ["<leader>pv"] = { vim.cmd.Ex, "Netrw" },
    J = { "mzJ`z", "Append Line Above" },
    ["<leader>a"] = { "Add File to Harpoon" },
    ["<leader>h"] = { "Toggle Harpoon" },
    ["<C-h>"] = { "Go to Harpoon 1" },
    ["<C-t>"] = { "Go to Harpoon 2" },
    ["<C-n>"] = { "Go to Harpoon 3" },
    ["<C-s>"] = { "Go to Harpoon 4" },
    ["<leader>p"] = { "Files" },
    ["<leader>pf"] = { "Open Telescope" },
    ["<leader>ps"] = { "GREP Search" },
    ["<C-p>"] = { "Fugitive - Git Search" },
    ["<leader>u"] = { "Toggle UndoTree" },
    ["<leader>g"] = { "Fugitive - Git" },
    ["<leader>gs"] = { "Git Stack" },
    ["<leader>s"] = { "Replace All" },
    ["<leader>x"] = { "Make Bash Executable" },
    ["<leader>Y"] = { "Yank to System Buff" },
    ["<leader>f"] = { "Format w/ LSP" },
    ["<leader>q"] = { "<cmd>confirm q <cr>", "Quit" },
    ["<leader>t"] = {"<cmd>Telescope toggleterm_manager <cr>jj", "Terminal Manager"},
    ["gcc"] = {"Comment Line"},
    ["gbc"] = {"Comment Block"}
})
wk.register({
    J = { "<cmd>m '>+1<CR>gv=gv", "Move Line Down" },
    K = { "<cmd>m '<-2<CR>gv=gv", "Move Line Up" },
    ["gc"] = {"Comment Line"},
    ["gb"] = {"Comment Block"}
}, { mode = "v" })
