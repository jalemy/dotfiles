#!/bin/sh

# extensionの一覧へのpath
EXTENSIONS=$(cat ./extensions.txt)

# extensionの一覧をもとにinstall
for extension in $EXTENSIONS; do
    echo "install extension '"$extension"'"
    code --install-extension $extension
done
