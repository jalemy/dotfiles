# .bashrc

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

# lsカラー表示
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'
