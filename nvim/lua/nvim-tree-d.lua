-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.nvim_tree_respect_buf_cwd = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require('nvim-tree').setup {
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
}
