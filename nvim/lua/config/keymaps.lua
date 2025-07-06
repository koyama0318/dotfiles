-- Set leader key to space
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = " "

-- window navigation
vim.api.nvim_set_keymap('n', '<leader>wh', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wl', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wsp', ':sp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wvsp', ':vsp<CR>', { noremap = true })

-- visual mode
vim.api.nvim_set_keymap('n', '<leader>a', 'ggVG', { noremap = true })

-- tabline
vim.api.nvim_set_keymap('n', '<leader>th', ':TablineBufferPrevious<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>tl', ':TablineBufferNext<CR>', { noremap = true })

-- buffer navigation
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bf', ':bfirst<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bl', ':blast<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>bu', ':bunload<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bdo', ':bufdo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bdi', ':bdelete<CR>', { noremap = true, silent = true })

-- file explorer
vim.api.nvim_set_keymap('n', '<Leader>tt', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>tf', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>e', ':Ex<CR>', { noremap = true, silent = true })

-- Basic editor keymaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without yanking
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Replace word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- telescope (using pcall to avoid errors if not installed)
local telescope_ok, builtin = pcall(require, 'telescope.builtin')
if telescope_ok then
  vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
  vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
  vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
  vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
  vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
  
  -- git
  vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
  vim.keymap.set("n", "<leader>gl", builtin.git_commits, {})
end

-- lsp keymaps
vim.keymap.set("n", "<leader>gf", vim.diagnostic.open_float, { silent = true, noremap = true })
vim.keymap.set("n", "<leader>gdj", "<cmd>Lspsaga diagnostic_jump_next<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>gdk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", { silent = true, noremap = true })

vim.keymap.set('n', '<leader>gh', vim.lsp.buf.hover, { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, { silent = true, noremap = true })
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { silent = true, noremap = true })