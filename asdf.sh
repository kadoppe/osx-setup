#!/usr/bin/env bash
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.3.0
mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions

asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install ruby 2.4.1
asdf global ruby 2.4.1

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs 7.9.0
asdf global nodejs 7.9.0
