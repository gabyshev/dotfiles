#!/usr/bin/env bash

sudo -v

if test ! $(which brew)
then
    echo "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

src="$HOME/.dotfiles/brew"

brew update
brew upgrade

echo "Restoring from bundle"

cd "$src"
brew bundle --force

brew cleanup

printf "\n"
