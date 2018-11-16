#!/usr/bin/env bash
#
#brew sync

src="$HOME/.dotfiles/brew"

echo "Homebrew sync..."

cd "$src"
brew bundle dump --force

printf "\n"
