#!/bin/sh

# 当script(setting.sh)のディレクトリパス
SCRIPT_DIR=$(cd $(dirname $0) && pwd)

# iterm2のplistファイルの名称
PLIST="com.googlecode.iterm2.plist"

# iterm2のplistが存在したら削除して、シンボリックリンクを作成
rm "$HOME/Library/Preferences/$PLIST"
ln -s "$SCRIPT_DIR/$PLIST" "$HOME/Library/Preferences/$PLIST"
