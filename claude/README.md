# Claude Code

[Claude Code](https://claude.ai/code) の設定。

## ファイル

| ファイル | リンク先 | 内容 |
|---|---|---|
| `settings.json` | `~/.claude/settings.json` | ステータスライン・プラグイン・モデル設定など |
| `CLAUDE.md` | `~/.claude/CLAUDE.md` | 全プロジェクト共通のグローバル指示 |

`settings.local.json` はマシン固有の設定のため dotfiles には含めない。

## インストール

`setup-npm-globals.sh` で自動インストールされる。

```sh
npm install -g @anthropic-ai/claude-code
```

## 反映

`just setup` でシンボリックリンクが作成される。

```sh
just setup
```
