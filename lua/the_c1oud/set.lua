-- line numbers
vim.opt.nu = true

-- indentations
vim.opt.tabstop = 4
-- vim.opt.stoftabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- line wrap
vim.opt.wrap = false

-- swap files and backups
vim.opt.swapfile = false
vim.opt.backup = false

-- undo
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- colors
vim.opt.termguicolors = true

-- scrolloff
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- update time
vim.opt.updatetime = 50

-- color column
-- vim.opt.colorcolumn = "80"

-- remap leader
vim.g.mapleader = " "

-- powerline fonts for vim-airline arrows 
vim.g.airline_powerline_fonts = 1

