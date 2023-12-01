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
    {
        'rcarriga/nvim-notify'
    },
    {
        "christoomey/vim-tmux-navigator"
    },
    {
        'numToStr/Comment.nvim',
        lazy = false,
    },
}
