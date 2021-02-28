#!/bin/sh

# install local version ruby
ruby_version=`cat .ruby_version`
if [[ ! -d "$HOME/.rbenv/versions/$ruby_version" ]]; then
    rbenv install $ruby_version
fi

# install bundler
gem install bundler

# install all gems
bundle install

# install pod
bundle exec pod install