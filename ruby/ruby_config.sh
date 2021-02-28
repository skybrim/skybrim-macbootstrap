#!/bin/sh

brew install rbenv
brew install ruby-build
brew install rbenv-vars
rbenv install 2.7.1
rbenv shell 2.7.1
gem install bundler
bundle install # 安装cocoapods

# # 初始化本地工程
# rbenv local 2.7.1
# bundle init
# echo 'gem "cocoapods", "1.10.1"' >> Gemfile
# bundle install