#!/usr/bin/env bash

binaries=(
  direnv
  fish
  golang-go
  nodejs
  peco
  python
  python-pip-whl
  python3
  python3-pip
  ruby
  ruby-dev
)

echo "Installing packages.."
sudo apt install -y ${binaries[@]}

echo "Updateing packages.."
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
