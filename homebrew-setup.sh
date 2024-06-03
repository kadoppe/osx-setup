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
brew tap mongodb/brew

brew install java

binaries=(
  act
  aicommits
  awscli
  bat
  bufbuild/buf/buf
  bun
  cabocha
  coreutils
  dbeaver-community
  difftastic
  direnv
  eza
  ffmpeg
  fish
  fsouza/prettierd/prettierd
  fzf
  gh
  ghq
  gifsicle
  git-filter-repo
  gnu-sed
  go
  golangci-lint
  graphviz
  httpie
  jq
  koekeishiya/formulae/skhd
  koekeishiya/formulae/yabai
  kubectx
  lazydocker
  lazygit
  mas
  mise
  mkcert
  mongodb-community
  mysql-client
  neovim
  node
  php
  postgresql
  pyenv
  pyenv-virtualenv
  qmk/qmk/qmk
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
  gather
  google-chrome
  google-cloud-sdk
  google-japanese-ime
  keyboard-cleaner
  karabiner-elements
  kindle
  linear-linear
  messenger
  microsoft-edge
  mos
  ngrok
  notion
  notion-calendar
  obsidian
  orbstack
  postman
  steam
  studio-3t
  spotify
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
  1291898086 # Toggl
  1521432881 # Session
)

mas upgrade
mas install ${storeapps[@]}

brew cleanup
