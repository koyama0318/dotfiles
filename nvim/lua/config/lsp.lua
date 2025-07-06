-- mason 起動
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "tsserver" },
})

-- LSP config
local lspconfig = require("lspconfig")
lspconfig.tsserver.setup({})

-- biome は null-ls を使って formatter/linter として統合
local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.biome,
    null_ls.builtins.diagnostics.biome,
  },
})

-- nvim-cmp 設定
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  }),
})

-- autopairs
require("nvim-autopairs").setup()
