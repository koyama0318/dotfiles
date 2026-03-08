# dotfiles

macOS の開発環境設定をまとめたリポジトリ。

## スタック

### シェル
- `zsh` — シェル
- `zinit` — Zsh プラグインマネージャ

### ターミナル
- `Ghostty` — メインターミナル
- `Warp` — サブターミナル
- `starship` — プロンプト

### バージョン管理
- `git`
- `asdf` — ランタイムバージョン管理

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
| `asdf/` | asdf の設定・バージョン管理 |
| `claude/` | Claude Code の設定 |
| `ghostty/` | Ghostty の設定 |
| `git/` | git の設定・グローバル gitignore |
| `scripts/` | セットアップスクリプト群 |
| `starship/` | starship プロンプト設定 |
| `vim/` | vim 設定 |
| `vscode/` | VS Code 設定・拡張機能リスト |
| `warp/` | Warp に関するメモ |
| `zsh/` | zsh 設定 |
