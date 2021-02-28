#!/bin/sh

# brew install
function brew_i() {
    for name in $@; do
        brew install $name
    done
}