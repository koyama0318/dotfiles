# asdf

ランタイムバージョン管理ツール [asdf](https://asdf-vm.com/) の設定。

## ファイル

| ファイル | リンク先 | 内容 |
|---|---|---|
| `.tool-versions` | `~/.tool-versions` | グローバルのバージョン定義 |
| `.asdfrc` | `~/.asdfrc` | asdf の設定 |

## プラグイン検索

```sh
# asdf 管理下チェック
asdf plugin list all | grep nodejs

# バージョン一覧
asdf list all nodejs
```

## プラグインのインストール

```sh
asdf plugin add nodejs
asdf install nodejs latest
```

## インストール済み確認

```sh
asdf plugin list
asdf list
```

## バージョン反映

```sh
# グローバル
asdf set -u nodejs 24.3.0

# ローカル（.tool-versions に書き込み）
asdf set nodejs 20.11.1
```

## プラグインの更新

```sh
asdf plugin update --all
```
