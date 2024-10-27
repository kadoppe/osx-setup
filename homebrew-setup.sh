#!/usr/bin/env bash

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating homebrew recipes..."
brew update

echo "Updating existing binaries"
brew upgrade

brew tap sanemat/font
brew tap cloudfoundry/tap
brew tap oven-sh/bun
brew tap mongodb/brew
brew tap osx-cross/avr
brew tap johanhaleby/kubetail
brew tap daipeihust/tap

brew install java

binaries=(
  act
  aicommits
  argo
  avr-gcc
  awscli
  bat
  bufbuild/buf/buf
  bun
  cabocha
  coreutils
  cloud-sql-proxy
  devcontainer
  difftastic
  direnv
  eza
  fblog
  fd
  ffmpeg
  fish
  fsouza/prettierd/prettierd
  fzf
  gh
  ghq
  gifsicle
  git-delta
  git-filter-repo
  gnu-sed
  go
  golangci-lint
  graphviz
  httpie
  im-select
  jq
  kubectx
  kubeseal
  kubetail
  kustomize
  lazydocker
  lazygit
  mas
  mise
  mkcert
  mongodb-community
  mysql-client@8.4
  neovim
  nkf
  node
  php
  postgresql
  qmk/qmk/qmk
  ripgrep
  skaffold
  starship
  svn
  tfenv
  tmux
  tree
  watch
  wget
  yarn
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
  1password
  aerial
  alacritty
  arc
  bartender
  coteditor
  cyberduck
  datagrip
  deepl
  discord
  dropbox
  figma
  firefox
  flutter
  font-fira-code-nerd-font
  font-fontawesome
  font-noto-sans-cjk-jp
  font-roboto
  font-udev-gothic
  font-udev-gothic-nf
  gather
  google-chrome
  google-cloud-sdk
  google-japanese-ime
  karabiner-elements
  keyboard-cleaner
  kindle
  linear-linear
  messenger
  microsoft-edge
  mos
  ngrok
  nikitabobko/tap/aerospace
  notion
  orbstack
  postman
  spotify
  steam
  teamviewer
  visual-studio-code
  zed
  zoom
)

echo "Installing apps..."
brew install -f --cask --appdir="/Applications" ${apps[@]}

echo "Installing store apps..."
storeapps=(
  1176895641 # Spark - Love your email again
  539883307 # LINE
  803453959 # Slack
  497799835 # XCode
  585829637 # Todoist
)

mas upgrade
mas install ${storeapps[@]}

brew cleanup
