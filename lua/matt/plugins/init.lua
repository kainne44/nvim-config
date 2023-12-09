return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {}
    },
    {
        'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'
    },
    {
        'mbbill/undotree'
    },
    {
        'tpope/vim-fugitive'
    },
    {
        "Max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup()
        end,
    },
    {
        { 'akinsho/toggleterm.nvim', version = "*", config = true },
    },
    {
        'm4xshen/autoclose.nvim'
    },
    -- {
    --     'rcarriga/nvim-notify'
    -- },
    {
        "christoomey/vim-tmux-navigator"
    },
    {
        'numToStr/Comment.nvim',
        lazy = false,
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    {
        "andrewferrier/wrapping.nvim",
        config = function()
            require("wrapping").setup()
        end
    },
    {
        'NvChad/nvim-colorizer.lua'
    },
    {
        'Bekaboo/deadcolumn.nvim'
    },
    {
        { 'akinsho/toggleterm.nvim', version = "*", config = true }
    },
    {
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
            cmdline = {
                view = 'cmdline',
            },
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            -- "rcarriga/nvim-notify",
        }
    },
}
