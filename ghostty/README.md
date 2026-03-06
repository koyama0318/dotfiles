# Ghostty

ターミナルエミュレータ [Ghostty](https://ghostty.org/) の設定。

## ファイル

| ファイル | リンク先 | 内容 |
|---|---|---|
| `config` | `~/.config/ghostty/config` | メイン設定（テーマ・パディング・透明度・カーソルなど） |
| `themes/blight_lights` | `~/.config/ghostty/themes/blight_lights` | Bright Lights カラーテーマ |

## 反映

`just setup` でシンボリックリンクが作成される。

```sh
just setup
```

設定の再読み込みは Ghostty 内で `cmd+shift+,`（macOS）。
