# dotfiles-dev-container-template

## 📦 スタック

### シェル・開発ユーティリティ
- `zsh`（シェル）
- `zinit`（Zshプラグインマネージャ）
- `starship`（高速・モダンなプロンプト）
- `asdf`（ランタイムバージョン管理）
- `just`（タスクランナー）

### バージョン管理
- `git`
- `lazygit`（TUI Gitクライアント）

### AIアシスタント
- `claude-cli`（Anthropic ClaudeへのCLIアクセス）

### エディタ（Neovim + Lua）
- `neovim`（Lua構成、プラグイン管理は `lazy.nvim`）
- プラグイン一覧：
  - UI:
    - `lualine.nvim`
    - `nvim-tree.lua`
    - `nvim-web-devicons`
    - `bufferline.nvim`
  - Git:
    - `gitsigns.nvim`
    - `fugitive.vim`
    - `lazygit.nvim`
  - 補完・LSP:
    - `nvim-lspconfig`
    - `nvim-cmp`
    - `cmp-nvim-lsp`, `cmp-buffer`, `cmp-path`
    - `LuaSnip`, `friendly-snippets`
  - ユーティリティ:
    - `telescope.nvim`, `plenary.nvim`
    - `comment.nvim`
    - `which-key.nvim`
    - `auto-pairs`
    - `nvim-ts-autotag`

## 📥 インストール方法

```sh
sh scripts/pre-install.sh
just
```
