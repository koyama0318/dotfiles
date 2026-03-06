# VS Code

VS Code のグローバル設定。

## ファイル

| ファイル | リンク先 | 内容 |
|---|---|---|
| `settings.json` | `~/Library/Application Support/Code/User/settings.json` | エディタ・フォーマッタ・テーマ設定など |
| `extensions.txt` | — | インストールする拡張機能 ID のリスト |

## 反映

`just setup` でシンボリックリンクが作成され、`setup-vscode-extensions.sh` で拡張機能も自動インストールされる。

```sh
just setup
```

設定の再読み込みはエディタ再起動、または `Developer: Reload Window`。

## 拡張機能の追加

`extensions.txt` に拡張機能 ID を1行1件で追記してから `just setup` を再実行する。
