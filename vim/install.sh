#!/usr/bin/env bash

src="$HOME/.dotfiles/vim"
dest="$HOME"
files=(.vimrc)

echo "Installing vim dotfiles"

for file in ${files[@]}; do
    rm -rf $dest/$file
    ln -s $src/$file $dest/$file
done

printf "\n"
