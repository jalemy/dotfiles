# .zshrc

# zsh-completionsの設定
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi
autoload -U compinit
compinit -u

# 言語設定 日本語を使用
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# editorをvimに変更
export EDITOR=vim

# Ctrl+Dでログアウトしないようにする
setopt IGNOREEOF

# コマンドを誤ったときに聞き直すようにする
setopt correct

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

# 履歴を共有する
setopt SHARE_HISTORY

# 履歴を重複しないようにする
setopt HIST_IGNORE_ALL_DUPS

# 履歴に時刻情報をつける
setopt EXTENDED_HISTORY

# カラー有効化
autoload -Uz colors; colors

# 補完機能を有効化する
autoload -Uz compinit; compinit -C
## select=2: 補完候補を一覧から選択する。補完候補が2つ以上なければすぐに補完する。
zstyle ':completion:*:default' menu select=2
## 補完候補に色を付ける。
zstyle ':completion:*' list-colors "${LS_COLORS}"

# 環境変数設定
export PATH="/usr/local/bin/git:$PATH"

# 左側プロンプト表示の設定
function lprompt {
  # 色設定
  name_text_color='157m%}'
  name_back_color='016m%}'
  path_text_color='254m%}'
  path_back_color='027m%}'
  arrow_text_color='016m%}'
  arrow_back_color='209m%}'

  text_color='%{\e[38;5;'
  back_color='%{\e[30;48;5;'
  reset='%{\e[0m%}'
  
  # user名表示用
  user="${back_color}${name_back_color}${text_color}${name_text_color}"
  # ディレクトリ表示用
  dir="${back_color}${path_back_color}${text_color}${path_text_color}"
  # 矢印表示用
  arrow="${back_color}${arrow_back_color}${text_color}${arrow_text_color}"
  echo "${user}%n@%m:${dir}%~${reset} %*\n${arrow}→${reset}"
}
PROMPT=`lprompt`

# コマンドの実行ごとに改行
function precmd() {
    if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
        NEW_LINE_BEFORE_PROMPT=1
    elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
        echo ""
    fi
}

# path
typeset -U path PATH
path=(
  /opt/homebrew/bin(N-/)
  /opt/homebrew/sbin(N-/)
  /usr/bin
  /usr/sbin
  /bin
  /sbin
  /usr/local/bin(N-/)
  /usr/local/sbin(N-/)
  /Library/Apple/usr/bin
)
