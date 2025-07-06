-- Neovim basic options

-- UI settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

-- Editor behavior
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.wrap = false

-- File handling
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- Search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Miscellaneous
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.clipboard:append({ "unnamedplus" })

-- Leader key
vim.g.mapleader = " "

-- Neo-tree color customization
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE" })