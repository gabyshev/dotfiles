#!/usr/bin/env bash

dotfiles="$HOME/.dotfiles"

bash $dotfiles/brew/install.sh
bash $dotfiles/git/install.sh
bash $dotfiles/vim/install.sh
bash $dotfiles/go/install.sh
bash $dotfiles/zsh/install.sh

echo "done!"
printf "\n"
