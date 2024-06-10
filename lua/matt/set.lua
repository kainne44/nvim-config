vim.opt.nu = true
vim.opt.relativenumber = true

-- show which line your cursor is on
vim.opt.cursorline = true

-- minimum number of screen lines to keep above and below cursor
vim.opt.scrolloff = 25

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true
vim.opt.textwidth = 80
vim.opt.linebreak = true
vim.opt.breakat = "80"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.breakindent = true

--case insensitive search Unless \C or one or more capital letters in search
--term
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.o.fillchars = [[eob: ,fold: ,foldopen:>,foldsep: ,foldclose:v]]
vim.o.foldcolumn = '1'

vim.g.mapleader = " "

vim.g.netrw_banner = 0

vim.cmd([[highlight ColorColumn ctermbg=1 guibg=lightgrey]])
