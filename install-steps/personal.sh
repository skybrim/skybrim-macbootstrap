username='wiley'

# Write script you want to use in the `if` block
if [[ "$username" == $(whoami) ]]; then
    # Git config
    git config --global user.name skybrim
    git config --global user.email throughskybrim@gmail.com

    # ssh configuration
    if [[ ! -d $HOME/.ssh ]]; then
        mkdir $HOME/.ssh
    fi
    backup_file ~/.ssh/config
    ln -s ~/.macbootstrap/zsh-config/ssh_config ~/.ssh/config

    # 配置 GPG
fi
