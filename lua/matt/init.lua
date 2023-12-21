local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("matt.remap")
require("matt.set")
require("lazy").setup({
    spec = {
        {
            { import = "matt/plugins" },
        },
    },
})
require("toggleterm").setup {
    size = 60,
    direction = 'vertical',
    open_mapping = [[<c-\>]],
}
require("autoclose").setup()
-- require("notify")
require("lualine").setup()
require("noice").setup({
    lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
        },
    },
    -- you can enable a preset for easier configuration
    presets = {
        bottom_search = true,         -- use a classic bottom cmdline for search
        command_palette = true,       -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false,           -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false,       -- add a border to hover docs and signature help
    },
})
require("telescope").setup {

    opts = {
        transparent = true,
        grouped = true,
    },
    defaults = {
        sorting_strategy = 'ascending',
        layout_config = {
            prompt_position = 'top',
        },
    },
    extensions = {
        file_browser = {
            layout_strategy = 'horizontal',
            layout_config = {
                height = 0.95,
                prompt_position = 'top',
                mirror = false,
            },

            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                    -- your custom insert mode mappings
                },
                ["n"] = {
                    -- your custom normal mode mappings
                },
            },
            grouped = true,
        },
    },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require('lazy').setup({
    { 'Bekaboo/deadcolumn.nvim' }
})
require('Comment').setup()
require('telescope').load_extension('fzf')
require("telescope").load_extension "file_browser"
if vim.g.neovide then
    vim.o.guifont = "MesloLGM Nerd Font:h16"
     
end

-- test comment for ssh commit
