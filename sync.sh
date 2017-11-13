#!/usr/bin/env bash

dotfiles="$HOME/.dotfiles"


echo "Syncronizing"
if [ -d "$dotfiles" -a -d "$dotfiles"/.git ]; then
    cd "$dotfiles"

    if (git status --porcelain | grep -q "^[ MADRC]"); then
        echo "Commit changes"
        message=":arrows_counterclockwise:"
        git add -A
        git commit -m "$message"
    fi

    echo "Pulling from origin"
    git pull --rebase origin master
    git push origin master
fi
