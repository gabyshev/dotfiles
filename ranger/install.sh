#!/usr/bin/env bash

src="$HOME/.dotfiles/ranger/config"
dest="$HOME/.config/ranger"

files=(commands.py commands_full.py rc.conf rifle.conf scope.sh)

echo "Installing ranger configs"

mkdir -p $dest

for file in ${files[@]}; do
    rm -rf  $dest/$file
    ln -s $src/$file $dest/$file
done

printf "\n"
