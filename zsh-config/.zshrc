export LANG=en_US.UTF-8
export ZSH=$HOME/.oh-my-zsh

plugins=(git extract encode64 urltools brew zsh-syntax-highlighting zsh-autosuggestions)

ZSH_THEME="spaceship"

source $ZSH/oh-my-zsh.sh
source ~/.macbootstrap/zsh-config/func.sh
source /usr/local/etc/profile.d/autojump.sh
if brew ls --versions scmpuff > /dev/null; then
    eval "$(scmpuff init -s --aliases=false)"
fi

# Homebrew
export HOMEBREW_NO_AUTO_UPDATE=true
# export PATH=/usr/local/bin:$PATH

# gpg
export GPG_TTY=$(tty)

# coreutils
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
