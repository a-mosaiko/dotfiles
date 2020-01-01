# lsではなくlsを使用、かつ色付けて表示
alias ls='gls --color=auto'

# pyenvさんに~/.pyenvではなく、/usr/loca/var/pyenvを使うようにお願いする
export PYENV_ROOT=/usr/local/var/pyenv
 
# pyenvさんに自動補完機能を提供してもらう
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# python仮想環境のAlias
#alias py_tf1.13='source ~/pyenv/tf1.13/bin/activate'
#alias py_torch='source ~/pyenv/env_torch/bin/activate'
alias pyenv_datanalysis='source ~/pyenv/env_datanalysis/bin/activate'
 
# OS標準のvimではなく、brewのvimを優先するように設定
# (署名問題回避のため)
export PATH=/usr/local/Cellar/vim/8.1.1550:$PATH

# Golangのパス設定
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# vim設定
#export VIM=$HOME/.vim



