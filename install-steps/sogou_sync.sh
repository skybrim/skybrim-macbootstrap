# Sync Sougou Config
cp ~/.macbootstrap/config/SogouPreferences.plist ~/.macbootstrap/config/UserPreferences.plist
mv ~/.macbootstrap/config/UserPreferences.plist "$HOME/Library/Application Support/Sogou/InputMethod/SogouPY/"

cp ~/.macbootstrap/config/sogouUserSet.plist ~/.macbootstrap/config/autoEngUserSet.plist
mv ~/.macbootstrap/config/autoEngUserSet.plist "$HOME/Library/Application Support/Sogou/InputMethod/SogouPY/"

