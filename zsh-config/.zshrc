export LANG=en_US.UTF-8
export ZSH=$HOME/.oh-my-zsh

plugins=(git extract encode64 urltools brew zsh-syntax-highlighting zsh-autosuggestions safe-paste vi-mode)

ZSH_THEME="spaceship"

source $ZSH/oh-my-zsh.sh
source ~/.macbootstrap/zsh-config/func.sh
source ~/.macbootstrap/zsh-config/alias.sh
# autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# scmpuff
eval "$(scmpuff init -s)"

# Homebrew
export HOMEBREW_NO_AUTO_UPDATE=true
export HOMEBREW_GITHUB_API_TOKEN=251de1bc5340b7111d92abf6c13d2bff9ff24715
# export PATH=/usr/local/bin:$PATH

# anaconda
export PATH=/usr/local/anaconda3/bin:$PATH

# golang
export GOPATH=$HOME/Develop/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOBIN
export GOPROXY="https://goproxy.cn"

# gpg
export GPG_TTY=$(tty)

# coreutils
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

neofetch
