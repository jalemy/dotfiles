#!/bin/bash

# 当script(setting.sh)のディレクトリパス
SCRIPT_DIR=$(cd $(dirname $0) && pwd)

# ホームディレクトリに.bashrcが存在したら削除して、シンボリックリンクを貼る
rm "$HOME/.bashrc"
ln -s "$SCRIPT_DIR/.bashrc" "$HOME/.bashrc"

# ホームディレクトリに.bash_profileが存在したら削除して、シンボリックリンクを貼る
rm "$HOME/.bash_profile"
ln -s "$SCRIPT_DIR/.bash_profile" "$HOME/.bash_profile"
