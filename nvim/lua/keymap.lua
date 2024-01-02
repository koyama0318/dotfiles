-- Set leader key to space
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '

-- window
vim.api.nvim_set_keymap('n', '<leader>wk', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wj', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wsp', ':sp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>wvsp', ':vsp<CR>', { noremap = true })

-- buffer
vim.api.nvim_set_keymap('n', '<leader>bn', 'bnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bp', 'bprev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bf', 'bfirst<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bl', 'blast<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>bd', ':bdelete<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>bu', ':bunload<CR>', { noremap = true, silent = true })

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
vim.keymap.set("n", "<leader>dj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
vim.keymap.set("n", "<leader>dk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})


-- https://alpacat.com/blog/nvim-lspconfig-key-mappings/

-- -- Global mappings.
-- -- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- vim.keymap.set('n', 'e', vim.diagnostic.open_float)
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
-- vim.keymap.set('n', 'q', vim.diagnostic.setloclist)

-- -- Use LspAttach autocommand to only map the following keys
-- -- after the language server attaches to the current buffer
-- vim.api.nvim_create_autocmd('LspAttach', {
--   group = vim.api.nvim_create_augroup('UserLspConfig', {}),
--   callback = function(ev)
--     -- Enable completion triggered by
--     vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

--     -- Buffer local mappings.
--     -- See `:help vim.lsp.*` for documentation on any of the below functions
--     local opts = { buffer = ev.buf }
--     vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
--     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
--     vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
--     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
--     vim.keymap.set('n', '', vim.lsp.buf.signature_help, opts)
--     vim.keymap.set('n', 'wa', vim.lsp.buf.add_workspace_folder, opts)
--     vim.keymap.set('n', 'wr', vim.lsp.buf.remove_workspace_folder, opts)
--     vim.keymap.set('n', 'wl', function()
--       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--     end, opts)
--     vim.keymap.set('n', 'D', vim.lsp.buf.type_definition, opts)
--     vim.keymap.set('n', 'rn', vim.lsp.buf.rename, opts)
--     vim.keymap.set({ 'n', 'v' }, 'ca', vim.lsp.buf.code_action, opts)
--     vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
--     vim.keymap.set('n', '<space>f', function()
--       vim.lsp.buf.format { async = true }
--     end, opts)
--   end,
-- })




--- In lsp attach function
local map = vim.api.nvim_buf_set_keymap
-- map(0, "n", "gr", "<cmd>Lspsaga rename<cr>", {silent = true, noremap = true})
-- map(0, "n", "gx", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
-- map(0, "x", "gx", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
-- map(0, "n", "K",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
-- map(0, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", {silent = true, noremap = true})
-- map(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
-- map(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})



-- map(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
-- map(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})


-- local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }
-- local keymap = vim.keymap.set
-- -- local keymap = vim.api.nvim_set_keymap

-- -- bufferの移動
-- keymap("n", "<C-n>", ":bnext<Return>", opts)
-- keymap("n", "<C-p>", ":bprevious<Return>", opts)

-- gitsigns
-- require('gitsigns').setup{
--     ...
--     on_attach = function(bufnr)
--       local gs = package.loaded.gitsigns

--       local function map(mode, l, r, opts)
--         opts = opts or {}
--         opts.buffer = bufnr
--         vim.keymap.set(mode, l, r, opts)
--       end

--       -- Navigation
--       map('n', ']c', function()
--         if vim.wo.diff then return ']c' end
--         vim.schedule(function() gs.next_hunk() end)
--         return '<Ignore>'
--       end, {expr=true})

--       map('n', '[c', function()
--         if vim.wo.diff then return '[c' end
--         vim.schedule(function() gs.prev_hunk() end)
--         return '<Ignore>'
--       end, {expr=true})

--       -- Actions
--       map('n', '<leader>hs', gs.stage_hunk)
--       map('n', '<leader>hr', gs.reset_hunk)
--       map('v', '<leader>hs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
--       map('v', '<leader>hr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
--       map('n', '<leader>hS', gs.stage_buffer)
--       map('n', '<leader>hu', gs.undo_stage_hunk)
--       map('n', '<leader>hR', gs.reset_buffer)
--       map('n', '<leader>hp', gs.preview_hunk)
--       map('n', '<leader>hb', function() gs.blame_line{full=true} end)
--       map('n', '<leader>tb', gs.toggle_current_line_blame)
--       map('n', '<leader>hd', gs.diffthis)
--       map('n', '<leader>hD', function() gs.diffthis('~') end)
--       map('n', '<leader>td', gs.toggle_deleted)

--       -- Text object
--       map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
--     end
--   }
