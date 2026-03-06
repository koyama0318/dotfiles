# Warp

ターミナル [Warp](https://www.warp.dev/) に関するメモ。

## インストール

`just install` で Homebrew から自動インストールされる。

```sh
just install
```

## シェル設定

Warp のデフォルトシェルを zsh にすると `zsh/.zshrc`（starship など）がそのまま使える。

- Settings → Features → Shell → Custom shell で `/bin/zsh` を指定
- またはシステムのデフォルトシェルを zsh にしておく

## テーマ・キーバインド

Warp のテーマやキーバインドはアプリ内の Settings から変更する。設定のエクスポートは Warp の仕様に依存するため dotfiles には含めていない。
