vim.api.nvim_set_keymap(
    "n",
    "<space>pv",
    ":Telescope file_browser hidden=true<CR><ESC>",
    { noremap = true, desc = "File Browser" }
)

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
    "n",
    "<space>pp",
    ":Telescope file_browser path=%:p:h select_buffer=true<CR><ESC>",
    { noremap = true,  desc = "Browse from Current Path" }
)
