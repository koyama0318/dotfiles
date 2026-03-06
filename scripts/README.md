# scripts

セットアップ・管理スクリプト群。

## スクリプト一覧

| ファイル | 役割 |
|---|---|
| `pre-install.sh` | Homebrew 本体のインストールなど事前準備 |
| `install.sh` | Homebrew パッケージ・cask のインストール |
| `setup.sh` | dotfiles のシンボリックリンク作成 |
| `setup-asdf.sh` | asdf プラグイン・バージョンのインストール |
| `setup-vscode-extensions.sh` | VS Code 拡張機能のインストール |
| `setup-npm-globals.sh` | npm グローバルパッケージのインストール（claude など） |
| `reset.sh` | setup.sh で作成したシンボリックリンクの削除 |

## 実行順

```sh
sh scripts/pre-install.sh   # Homebrew が未インストールの場合のみ
just install                # パッケージインストール
just setup                  # シンボリックリンク作成
```

または `just`（`just install` + `just setup`）でまとめて実行できる。

## reset について

`reset.sh` はシンボリックリンクのみ削除する。dotfiles 本体のファイルは消えない。
dotfiles リポジトリ以外のシンボリックリンクはスキップされるので安全に実行できる。
