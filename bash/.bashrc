# .bashrc

# terminalでgit補完が効くように設定
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash

# プロンプトの設定
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

function prompt {
    # 色の変数宣言
    local BLUE="\[\e[1;34m\]"
    local RED="\[\e[1;31m\]"
    local GREEN="\[\e[1;32m\]"
    local WHITE="\[\e[00m\]"
    local GRAY="\[\e[1;37m\]"

    # ユーザー名@ホスト名
    local BASE="\u@\h"

    # プロンプトに表示する内容
    PS1="${GREEN}${BASE}${WHITE}:${BLUE}\W${BLUE}\$(parse_git_branch)${BLUE}\$${WHITE} "
}

prompt

# エイリアスの設定

## sedは使わないでgsed使う
alias sed='gsed'

## lsカラー表示
alias ls='ls -FG'
alias ll='ls -lFG'
alias la='ls -laFG'

# 環境変数の設定
export PATH=$HOME/.nodebrew/current/bin:$PATH

# serverless frameworkの設定
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/jalemy/.nodebrew/node/v11.2.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/jalemy/.nodebrew/node/v11.2.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/jalemy/.nodebrew/node/v11.2.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/jalemy/.nodebrew/node/v11.2.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/jalemy/.nodebrew/node/v11.2.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /Users/jalemy/.nodebrew/node/v11.2.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash
