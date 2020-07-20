# .bash_profile

# ホームディレクトリに.bashrcが存在する場合、読み込むように
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/y.sano/google-cloud-sdk/path.bash.inc' ]; then . '/Users/y.sano/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/y.sano/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/y.sano/google-cloud-sdk/completion.bash.inc'; fi

# pyenv config
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
