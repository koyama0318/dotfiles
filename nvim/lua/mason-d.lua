require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		},
		border = 'single'
	}
})

-- https://github.com/williamboman/mason-lspconfig.nvim
require("mason-lspconfig").setup({
	ensure_installed = {
		"snyk_ls",
		"typos_lsp",
		"cssls",
		"dockerls",
		"eslint",
		"golangci_lint_ls",
		"gopls",
		"html",
		-- "hls",
		"jsonls",
		"tsserver",
		"lua_ls",
		"prismals",
		-- "sqls",
		"tailwindcss",
		"yamlls"
	},
	automatic_installation = false,
})

require("lspconfig").snyk_ls.setup({})
require("lspconfig").typos_lsp.setup({})
require("lspconfig").cssls.setup({})
require("lspconfig").dockerls.setup({})
require("lspconfig").eslint.setup({})
require("lspconfig").golangci_lint_ls.setup({})
require("lspconfig").gopls.setup({})
require("lspconfig").html.setup({})
-- require("lspconfig").hls.setup({})
require("lspconfig").jsonls.setup({})
require("lspconfig").tsserver.setup({})
require("lspconfig").lua_ls.setup({})
require("lspconfig").prismals.setup({})
-- require("lspconfig").sqls.setup({})
require("lspconfig").tailwindcss.setup({})
require("lspconfig").yamlls.setup({})

require("lspconfig.ui.windows").default_options.border = 'single'

local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua, -- lua formatter
		null_ls.builtins.diagnostics.luacheck, -- lua linter
	},
})
