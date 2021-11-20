#!/bin/sh

# echo blue
function echo_blue() {
    printf "\033[1;36m =====$1=====> \033[0m \n" 
}

# brew install
function brew_i() {
    for name in $@; do
        echo_blue "$name installing"
        brew install $name
    done
}

function brew_c() {
	  for name in $@; do 
	      echo_blue "$name installing"
				brew install $name --cask
		done
}