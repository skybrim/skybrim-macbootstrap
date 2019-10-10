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
    gpg --full-generate-key
    # gpg --list-keys  # 查看刚刚生成的秘钥
    # gpg --armor --export pub GPG-ID # 复制公钥
    # git config --global user.signingkey GPG-ID # 配置使用 key
fi

