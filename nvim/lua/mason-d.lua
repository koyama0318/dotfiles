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

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
	},
})

require("lspconfig").pyright.setup({})
require("lspconfig").lua_ls.setup({})

require("lspconfig.ui.windows").default_options.border = 'single'

local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua, -- lua formatter
		null_ls.builtins.diagnostics.luacheck, -- lua linter
	},
})