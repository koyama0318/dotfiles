vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"

-- Enable line numbers
vim.api.nvim_exec([[
  set number
]], false)

-- nofoldenable
vim.api.nvim_exec([[
  set nofoldenable
]], false)

-- Enable syntax highlighting
vim.api.nvim_exec([[
  syntax enable
]], false)

-- Tab settings
vim.api.nvim_set_option('tabstop', 4)
vim.api.nvim_set_option('shiftwidth', 4)
vim.api.nvim_set_option('expandtab', true)

-- Enable auto-indentation
vim.api.nvim_set_option('smartindent', true)
vim.api.nvim_set_option('autoindent', true)

-- Enable line wrapping
vim.api.nvim_set_option('wrap', true)

-- Display matching parentheses
vim.api.nvim_set_option('showmatch', true)

-- Highlight search
vim.api.nvim_set_option('hlsearch', true)

-- Enable clipboard support
vim.api.nvim_set_option('clipboard', 'unnamedplus')

-- 背景を透明に設定
vim.cmd [[hi Normal guibg=NONE ctermbg=NONE]]
vim.cmd [[hi NonText guibg=NONE ctermbg=NONE]]

-- TrueColor サポートを有効化
vim.o.termguicolors = true
