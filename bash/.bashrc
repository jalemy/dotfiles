export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim

alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'
alias mvim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/mvim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

eval "$(rbenv init -)"
eval "$(hub alias -s)"

source ~/dotfiles/.git-completion.bash
