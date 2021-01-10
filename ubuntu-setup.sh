#!/usr/bin/env bash

binaries=(
  ruby
)

echo "Installing packages.."
sudo apt install ${binaries[@]}

echo "Updateing packages.."
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
