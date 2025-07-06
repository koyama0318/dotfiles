# Neovim Configuration

このディレクトリにはNeovimの設定ファイルが含まれています。
`~/.config/nvim/` はこのディレクトリへのシンボリックリンクです。

## フォルダ構成

```
nvim/
├── init.lua                    # エントリーポイント - 設定ファイルを読み込み
├── lazy-lock.json             # プラグインのバージョンロック
├── lazyvim.json               # LazyVimの設定
├── lua/
│   ├── config/
│   │   ├── lazy.lua           # lazy.nvimのブートストラップとプラグイン定義
│   │   ├── lsp.lua            # LSP関連の設定
│   │   ├── options.lua        # Neovimの基本設定
│   │   └── keymaps.lua        # キーマッピング
│   └── plugins/
│       ├── example.lua        # プラグイン設定例
│       └── tender.lua         # テーマ設定
└── README.md                  # このファイル
```

## 設定ファイルの役割

### `init.lua`
- Neovimの起動時に最初に読み込まれるファイル
- 他の設定ファイルを順次読み込む

### `lua/config/options.lua`
- Neovimの基本設定
- UI設定（行番号、カラー、スクロールオフセットなど）
- エディタ動作（タブ、インデント、検索など）
- ファイル処理（スワップ、バックアップ、クリップボードなど）

### `lua/config/keymaps.lua`
- 全てのキーマッピング定義
- ウィンドウナビゲーション
- バッファ操作
- ファイルエクスプローラー
- Telescope（ファジーファインダー）
- LSP関連のキーマップ

### `lua/config/plugins.lua`
- lazy.nvimを使用したプラグイン定義
- UI、LSP、補完、ファイルナビゲーションなどのプラグイン

### `lua/plugins/`
- 個別プラグインの詳細設定
- プラグイン固有の設定やカスタマイズ

## 主要なキーマップ

| キー | 動作 |
|------|------|
| `<Space>` | リーダーキー |
| `<leader>e` | ファイルエクスプローラー |
| `<leader>ff` | ファイル検索 |
| `<leader>fg` | 文字列検索 |
| `<leader>wh/wl` | ウィンドウ移動 |
| `<leader>bn/bp` | バッファ移動 |
| `<leader>gd` | 定義にジャンプ |
| `<leader>gr` | 参照を表示 |

## インストールされているプラグイン

- **UI**: catppuccin, lualine, which-key, nvim-web-devicons
- **ファイルナビゲーション**: neo-tree
- **LSP**: nvim-lspconfig, mason, mason-lspconfig
- **補完**: nvim-cmp, LuaSnip
- **検索**: telescope
- **Git**: gitsigns
- **その他**: Comment, nvim-autopairs, aerial

## 注意事項

- `~/.config/nvim/` はこのディレクトリへのシンボリックリンクです
- 設定を変更する際はこのディレクトリ内のファイルを直接編集してください
- 設定の変更は自動的にNeovimに反映されます