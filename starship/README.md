# starship

クロスシェル対応のプロンプト [starship](https://starship.rs/) の設定。

## ファイル

| ファイル | リンク先 |
|---|---|
| `starship.toml` | `~/.config/starship.toml` |

## カスタマイズ内容

- 2行プロンプト（ディレクトリ + git 情報 → 入力行）
- 右プロンプトに直前ブランチ名を表示
- git ステータスはステージ済み（S）・変更（C）のみ表示、それ以外は非表示
- 時刻表示あり（HH:MM:SS）

## 反映

`just setup` でシンボリックリンクが作成される。

```sh
just setup
```
