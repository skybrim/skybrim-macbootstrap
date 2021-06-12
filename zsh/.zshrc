ZSH_DISABLE_COMPFIX=true

export LANG=en_US.UTF-8
export ZSH=$HOME/.oh-my-zsh
plugins=(git extract encode64 urltools brew zsh-syntax-highlighting zsh-autosuggestions safe-paste vi-mode)
ZSH_THEME="aussiegeek"
source $ZSH/oh-my-zsh.sh

source ~/.macbootstrap/zsh/func.sh
source ~/.macbootstrap/zsh/alias.sh
source ~/.macbootstrap/mac/change_ctrl_caps.sh

bindkey -v

# scmpuff git 插件
eval "$(scmpuff init -s)"

# gpg
export GPG_TTY=$(tty)

# Homebrew
export HOMEBREW_NO_AUTO_UPDATE=true
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# coreutils
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

# nvm
nvm() { . "$HOME/.nvm/nvm.sh" ; nvm $@ ; }
export PATH=$HOME/.nvm/versions/node/v14.16.0/bin/:$PATH

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

neofetch

