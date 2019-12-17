# link git config
source $HOME/.macbootstrap/basic.sh

mv ~/.gitconfig ~/.gitconfig_backup
backup_file ~/.gitattributes
ln -s ~/.macbootstrap/git-config/.gitconfig ~/.gitconfig
ln -s ~/.macbootstrap/git-config/.gitattributes ~/.gitattributes
ln -s ~/.macbootstrap/git-config/.gitignore_global ~/.gitignore_global

#1 brew install gpg 来安装依赖。
#2 输入 gpg --full-generate-key 并按照配置安装，注意第三步选择时长时，如果是个人使用可以填 0，表示永不过期，避免以后的麻烦。最后填写密码时可以不填。
#3 安装完成后输入 gpg --list-keys 查看刚刚生成的秘钥，在 pub 下面有一长串数字和字母，这个是 GPG-ID。
#4 输入 gpg --armor --export pub <#GPG-ID#> 把公钥复制出来，拷贝到 GitHub GPG Keys 上。
#5 输入 git config --global user.signingkey <#GPG-ID#> 来配置使用哪个 key。
#6 单次提交时使用 git commit -s 参数来开启 GPG key，或者使用git config --global commit.gpgsign true 设置为全局默认使用。
#7 输入 gvc <commit_hash> 来检查某次提交的 GPG 签名情况，如果没有输出，说明没有签名。它是git verify-commit命令的缩写。
