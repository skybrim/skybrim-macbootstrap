# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

ZSH_DISABLE_COMPFIX=true
ZSH_THEME=robbyrussell
export LANG=en_US.UTF-8
export ZSH=$HOME/.oh-my-zsh
plugins=(git gitignore git-open z colored-man-pages extract encode64 urltools brew zsh-syntax-highlighting zsh-autosuggestions safe-paste vi-mode)
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.macbootstrap/zsh/func.sh
source ~/.macbootstrap/zsh/alias.sh
source ~/.macbootstrap/mac/change_ctrl_caps.sh

bindkey -v
export EDITOR=vim

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_AUTO_UPDATE=true
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"

# xcode
export PATH=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:$PATH

# coreutils
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# pyenv
export PATH=$HOME/.pyenv/bin:$PATH
eval "$(pyenv init -)"

neofetch

# scmpuff git 插件
eval "$(scmpuff init -s)"

export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

export TERM=xterm-256color