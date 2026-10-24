# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

ZSH_DISABLE_COMPFIX=true
ZSH_THEME=robbyrussell
export LANG=en_US.UTF-8
export ZSH=$HOME/.oh-my-zsh
plugins=(git gitignore git-open z colored-man-pages extract encode64 urltools brew zsh-syntax-highlighting zsh-autosuggestions safe-paste vi-mode)
source $ZSH/oh-my-zsh.sh

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
export PATH=/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/opt/homebrew/opt/coreutils/libexec/gnuman:$MANPATH
export PATH=/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH

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

fastfetch

# scmpuff git 插件
eval "$(scmpuff init -s)"

# scmpuff 依赖导出变量 SCMPUFF_GIT_CMD 指向真实 git；该变量在非交互 shell（脚本、
# ZCode 等工具）里可能不随函数一起继承，丢失后函数会执行空命令报 permission denied。
# 这里用自愈版包装覆盖：变量在则行为不变，变量丢则调用时现场解析。
function git() {
  local g="${SCMPUFF_GIT_CMD:-$(whence -p git)}"
  case $1 in
    (commit|blame|log|rebase|merge) scmpuff exec -- "$g" "$@" ;;
    (checkout|diff|rm|reset|restore) scmpuff exec --relative -- "$g" "$@" ;;
    (add) scmpuff exec -- "$g" "$@"
      scmpuff_status ;;
    (*) "$g" "$@" ;;
  esac
}

#export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"


export TERM=xterm-256color
# 飞书推送脚本（集中放在 ~/develop/feishu-bot/）
export PATH="$HOME/develop/feishu-bot:$PATH"
