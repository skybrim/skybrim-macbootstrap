username='wiley'

# Write script you want to use in the `if` block
if [[ "$username" == $(whoami) ]]; then
    # Git config
    git config --global user.name skybrim
    git config --global user.email throughskybrim@gmail.com

    # 生成 .ssh 文件
    if [[ ! -d $HOME/.ssh ]]; then
        mkdir $HOME/.ssh
    fi

fi
