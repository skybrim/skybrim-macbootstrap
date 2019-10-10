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
    # GPG_KEY="$HOME/.macbootstrap/git-config/bestswifter.asc"
    # gpg --import "$GPG_KEY"
    # shred --remove "$GPG_KEY"
    # git config --global user.signingkey 368B0D29D38D4B4EEE5BF51EB2468CF4358BF1CF
    # git config --global commit.gpgsign true
fi
