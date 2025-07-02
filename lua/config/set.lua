vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

-- vim.opt.hlsearch = false
vim.opt.incsearch = false

vim.opt.scrolloff = 8

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--Undofile for undotree
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Undotree settings
vim.g.undotree_WindowLayout = 2 --Long diff panel at bottom (Default is 1)
