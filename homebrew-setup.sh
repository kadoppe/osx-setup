#!/usr/bin/env bash

if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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
brew tap jorgerojas26/lazysql
brew tap mike-engel/jwt-cli

brew install lazysql

brew install java

binaries=(
  act
  aicommits
  argo
  avr-gcc
  awscli
  bat
  bufbuild/buf/buf
  coreutils
  cloud-sql-proxy
  difftastic
  direnv
  eza
  fastfetch
  fblog
  fd
  ffmpeg
  fish
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
  jwt-cli
  jq
  kubectx
  kubeseal
  kubetail
  kustomize
  lavat
  lazydocker
  lazygit
  lazysql
  mas
  mise
  mkcert
  mongodb-community
  mysql-client@8.4
  neovim
  nkf
  node
  postgresql
  qmk/qmk/qmk
  ripgrep
  skaffold
  starship
  tfenv
  tmux
  tree
  uv
  watch
  wget
  yarn
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
  1password
  alacritty
  arc
  bartender
  chatgpt
  coteditor
  cursor
  discord
  figma
  firefox
  font-fira-code-nerd-font
  font-fontawesome
  font-noto-sans-cjk-jp
  font-roboto
  font-udev-gothic
  font-udev-gothic-nf
  gather
  google-chrome
  google-cloud-sdk
  ghostty
  karabiner-elements
  keyboard-cleaner
  linear-linear
  messenger
  microsoft-edge
  mos
  ngrok
  nikitabobko/tap/aerospace
  notion
  notion-calendar
  orbstack
  postman
  raycast
  spotify
  steam
  visual-studio-code
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
  6714467650 # Perplexity
)

mas upgrade
mas install ${storeapps[@]}

brew cleanup
