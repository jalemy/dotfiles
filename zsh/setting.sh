#!/bin/sh

# このscriptのディレクトリパス
SCRIPT_DIR=$(cd $(dirname $0) && pwd)

# ホームディレクトリに.zshrcが存在したら削除して、シンボリックリンクを貼る
rm "$HOME/.zshrc"
ln -s "$SCRIPT_DIR/.zshrc" "$HOME/.zshrc"