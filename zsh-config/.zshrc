export LANG=en_US.UTF-8
export ZSH=$HOME/.oh-my-zsh

plugins=(git extract encode64 urltools brew zsh-syntax-highlighting zsh-autosuggestions safe-paste vi-mode)

ZSH_THEME="spaceship"

source $ZSH/oh-my-zsh.sh
source ~/.macbootstrap/zsh-config/func.sh
source ~/.macbootstrap/zsh-config/alias.sh
source ~/.macbootstrap/basic.sh

# autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# scmpuff
eval "$(scmpuff init -s)"

# gpg
export GPG_TTY=$(tty)

# Homebrew
export HOMEBREW_NO_AUTO_UPDATE=true
# export HOMEBREW_GITHUB_API_TOKEN=251de1bc5340b7111d92abf6c13d2bff9ff24715
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
# export PATH=/usr/local/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# golang
export GOPATH=$HOME/Develop/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOBIN
export GOPROXY="https://goproxy.cn"

# coreutils
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

neofetch

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"