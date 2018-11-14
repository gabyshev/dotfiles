#!/usr/bin/env bash

sudo -v

if test ! $(which brew)
then
    echo "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

apps=(
  git
  zsh
  zsh-syntax-highlighting
  tree
  pyenv
  ctags
  curl
  kubectx
  ranger
  htop
  fzf
)

brew install "${apps[@]}"

brew cleanup
