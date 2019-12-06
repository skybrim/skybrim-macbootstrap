# link git config
mv ~/.gitconfig ~/.gitconfig_backup
backup_file ~/.gitattributes
ln -s ~/.macbootstrap/git-config/.gitconfig ~/.gitconfig
ln -s ~/.macbootstrap/git-config/.gitattributes ~/.gitattributes
ln -s ~/.macbootstrap/git-config/.gitignore_global ~/.gitignore_global