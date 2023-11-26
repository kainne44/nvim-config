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
}
