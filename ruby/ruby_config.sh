#!/bin/sh

brew install rbenv
brew install ruby-build
brew install rbenv-vars
rbenv install 2.7.2
rbenv shell 2.7.2
gem install bundler
# bundle init