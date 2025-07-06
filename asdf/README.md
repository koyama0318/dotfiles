# asdf

## プラグインの検索

```sh
asdf plugin list all | grep nodejs # asdf 管理下チェック
asdf list all nodejs # バージョン一覧
```

## プラグインのインストール

```sh
asdf plugin add nodejs
asdf install nodejs latest
```

## インストール済みのプラグイン

```sh
asdf plugin list
asdf list
```

## 反映 (グローバル)

```sh
asdf set -u nodejs 24.3.0
```

## 反映 (ローカル)

```sh
asdf set nodejs 20.11.1
> .tool-versions
```

## プラグインの更新

```sh
asdf plugin update --all
```
