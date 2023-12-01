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
require("toggleterm").setup {}
require("autoclose").setup()
require("lualine").setup()
-- You don't need to set any of these options.
-- IMPORTANT!: this is only a showcase of how you can set default options!
require("telescope").setup {
    
    opts = {
        transparent = true,
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
        },
    },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require('Comment').setup()
require("telescope").load_extension "file_browser"
return {

}
