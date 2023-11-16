#!/usr/bin/env bash

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating homebrew recipes..."
brew update

echo "Updating existing binaries"
brew upgrade

brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap sanemat/font
brew tap cloudfoundry/tap
brew tap oven-sh/bun

brew install java

binaries=(
  bat
  bufbuild/buf/buf
  bun
  coreutils
  direnv
  eza
  ffmpeg
  fish
  fzf
  gh
  ghq
  gifsicle
  go
  golangci-lint
  jq
  koekeishiya/formulae/skhd
  koekeishiya/formulae/yabai
  kubectx
  lazydocker
  mas
  mkcert
  neovim
  node
  php
  pyenv
  pyenv-virtualenv
  ripgrep
  skaffold
  starship
  svn
  terraform
  tmux
  wget
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
  1password
  1password/tap/1password-cli
  aerial
  akiflow
  android-studio
  alacritty
  around
  audacity
  bartender
  choosy
  coteditor
  cyberduck
  datagrid
  deepl
  discord
  dropbox
  fellow
  figma
  firefox
  flutter
  font-dejavu-sans-mono-nerd-font
  font-fira-code-nerd-font
  font-fontawesome
  font-noto-sans-cjk-jp
  font-roboto
  google-chrome
  google-cloud-sdk
  google-japanese-ime
  keyboard-cleaner
  karabiner-elements
  kindle
  krisp
  linear-linear
  mecab
  mecab-ipadic
  messenger
  microsoft-edge
  ngrok
  notion
  obsidian
  orbstack
  postman
  skitch
  steam
  studio-3t
  spotify
  tower
  visual-studio-code
  vlc
  zoom
)

brew install ricty --with-powerline
cp -f /opt/homebrew/Cellar/ricty/4.1.1/share/fonts/Ricty*.ttf ~/Library/Fonts
fc-cache -vf

echo "Installing apps..."
brew install -f --cask --appdir="/Applications" ${apps[@]}

echo "Installing store apps..."
storeapps=(
  1176895641 # Spark - Love your email again
  539883307 # LINE
  803453959 # Slack
  497799835 # XCode
  585829637 # Todoist
  1291898086 # Toggl
)

mas upgrade
mas install ${storeapps[@]}

brew cleanup
