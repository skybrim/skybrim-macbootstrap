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

# autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# scmpuff
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
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

neofetch

