return {
    {
        'kevinhwang91/nvim-ufo'
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {},
    },
    {
        'stevearc/aerial.nvim',
        opts = {
            layout = {
                min_width = 40,
                default_direction = "prefer_left",
            },
        },
        -- Optional dependencies
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    {
        "mbbill/undotree",
    },
    { 'echasnovski/mini.indentscope', version = '*' },
    { 'echasnovski/mini.surround',    version = '*' },
    { 'echasnovski/mini.pairs',       version = '*' },
    {
        "lervag/vimtex",
        ft = "tex",
        config = function()
            vim.g.vimtex_view_method = "skim"
            vim.g.tex_flavor = "xelatex"     -- or 'lualatex'
        end,
    },
    {
        "Max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup()
        end,
    },
    {
        { "akinsho/toggleterm.nvim", version = "*", config = true },
    },
    {
        "christoomey/vim-tmux-navigator",
    },
    {
        "numToStr/Comment.nvim",
        lazy = false,
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },
    {
        "andrewferrier/wrapping.nvim",
        config = function()
            require("wrapping").setup()
        end,
    },
    {
        'mrjones2014/smart-splits.nvim' },
    { "NvChad/nvim-colorizer.lua" },
    {
        "Bekaboo/deadcolumn.nvim",
    },
    {
        { "akinsho/toggleterm.nvim", version = "*", config = true },
    },
    {
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    {
        "savq/paq-nvim",
        "frabjous/knap",
    },
}
