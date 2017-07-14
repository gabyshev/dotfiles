#!/usr/bin/env bash

echo "Prepare Golang env"

mkdir ~/go
mkdir ~/go/bin
mkdir ~/go/go_appengine

echo "Installing GVM"

bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

printf "\n"
