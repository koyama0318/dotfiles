# Zed

エディタ [Zed](https://zed.dev/) の設定。

## ファイル

| ファイル | リンク先 | 内容 |
|---|---|---|
| `settings.json` | `~/.config/zed/settings.json` | テーマ・フォントサイズ・キーマップなど |
| `keymap.json` | `~/.config/zed/keymap.json` | カスタムキーバインド |

## 反映

`just setup` でシンボリックリンクが作成される。

```sh
just setup
```

設定の再読み込みは `cmd+shift+p` → `zed: reload configuration`。
