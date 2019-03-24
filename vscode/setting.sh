#!/bin/sh

# 当script(setting.sh)のディレクトリパス
SCRIPT_DIR=$(cd $(dirname $0) && pwd)
# VSCodeのインストール先ディレクトリパス
VSCODE_SETTING_DIR=~/Library/Application\ Support/Code/User

# 既にVSCodeのsettings.jsonが存在したら削除して、シンボリックリンクを貼る
rm "$VSCODE_SETTING_DIR/settings.json"
ln -s "$SCRIPT_DIR/settings.json" "${VSCODE_SETTING_DIR}/settings.json"

# 既にVSCodeのkeybindings.jsonが存在したら削除して、シンボリックリンクを貼る
rm "$VSCODE_SETTING_DIR/keybindings.json"
ln -s "$SCRIPT_DIR/keybindings.json" "${VSCODE_SETTING_DIR}/keybindings.json"
