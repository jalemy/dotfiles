# dotfiles

editorやterminalなど、開発環境周りの設定ファイルを置く。  

## 設定方法

```sh
$ git clone
```

あとでかく

## vscode

```sh
$ sh setting.sh
```

* setting.json
* keybindings.json

の2つにシンボリックリンクが貼られる。

### extensionの管理方法

#### installされているextensionのexport

```sh
$ sh exportExtensions.sh
```

#### exportされたextensionの一覧をもとにinstall

```sh
$ sh installExtensions.sh
```

## bash

```sh
$ sh setting.sh
```

* .bashrc
* .bash_profile

の2つにシンボリックリンクが貼られる。

## brew

```sh
$ brew bundle dump
```

でbrew / brew caskに入っているアプリケーション一覧をbrewfileに出力

```sh
$ brew bundle
```

でbrewfileをもとにインストール

## git

```sh
$ sh setting.sh
```

* .gitconfig

にシンボリックリンクが貼られる。
