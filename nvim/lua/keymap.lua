-- Set leader key to space
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '

-- window
vim.api.nvim_set_keymap('n', '<leader>wh', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wl', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wsp', ':sp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wvsp', ':vsp<CR>', { noremap = true })

-- visual mode
vim.api.nvim_set_keymap('n', '<leader>a', 'ggVG', { noremap = true })

-- tabline
vim.api.nvim_set_keymap('n', '<leader>th', ':TablineBufferPrevious<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tl', ':TablineBufferNext<CR>', { noremap = true })

-- buffer
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bf', ':bfirst<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bl', ':blast<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>bu', ':bunload<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bdo', ':bufdo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bdi', ':bdelete<CR>', { noremap = true, silent = true })

-- tree
vim.api.nvim_set_keymap('n', '<Leader>tt', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>tf', ':NvimTreeFocus<CR>', { noremap = true, silent = true })

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})

-- git
vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
vim.keymap.set("n", "<leader>gl", builtin.git_commits, {})

-- lsp
vim.keymap.set("n", "<leader>gf", vim.diagnostic.open_float, { silent = true, noremap = true })
vim.keymap.set("n", "<leader>gdj", "<cmd>Lspsaga diagnostic_jump_next<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>gdk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", { silent = true, noremap = true })

vim.keymap.set('n', '<leader>gh', vim.lsp.buf.hover, { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { silent = true, noremap = true })
