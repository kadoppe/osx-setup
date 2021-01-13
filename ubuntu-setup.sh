#!/usr/bin/env bash

echo "Essential settings.."
timedatectl set-timezone Asia/Tokyo

echo "Updateing packages.."
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove

echo "Installing packages.."
binaries=(
  direnv
  fish
  golang-go
  neovim
  nodejs
  peco
  python
  python-pip-whl
  python3
  python3-pip
  ruby
  ruby-dev
)

sudo apt install -y ${binaries[@]}

