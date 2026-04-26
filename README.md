# dotfiles

macOS の開発環境設定をまとめたリポジトリ。

## スタック

### シェル
- `zsh` — シェル
- `zinit` — Zsh プラグインマネージャ

### ターミナル
- `Ghostty` — メインターミナル
- `starship` — プロンプト

### バージョン管理
- `git`

### エディタ
- `VS Code` — メインIDE
- `vim` — 軽量編集用

### ユーティリティ
- `just` — タスクランナー
- `tmux` — ターミナルマルチプレクサ

## セットアップ

```sh
sh scripts/pre-install.sh
just
```

## リセット（シンボリックリンクの削除）

```sh
just reset
```

## ディレクトリ構成

| ディレクトリ | 内容 |
|---|---|
| `claude/` | Claude Code の設定 |
| `ghostty/` | Ghostty の設定 |
| `git/` | git の設定・グローバル gitignore |
| `scripts/` | セットアップスクリプト群 |
| `starship/` | starship プロンプト設定 |
| `tmux/` | tmux 設定・レイアウト |
| `vim/` | vim 設定 |
| `vscode/` | VS Code 設定・拡張機能リスト |
| `zsh/` | zsh 設定 |
