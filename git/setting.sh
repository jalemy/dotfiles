#!/bin/sh

# 当script(setting.sh)のディレクトリパス
SCRIPT_DIR=$(cd $(dirname $0) && pwd)

# ホームディレクトリに.gitconfigが存在したら削除して、シンボリックリンクを貼る
rm "$HOME/.gitconfig"
ln -s "$SCRIPT_DIR/.gitconfig" "$HOME/.gitconfig"
