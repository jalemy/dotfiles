#!/bin/sh

# homebrew
if [ "$(command -v brew)" == "" ]; then
    echo "Install Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Update Homebrew"
    brew update
fi

# zshの設定
source ./zsh/setting.sh
