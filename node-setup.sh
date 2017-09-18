#!/usr/bin/env fish

asdf install nodejs 8.4.0
asdf global nodejs 8.4.0

npm install -g npm@3.8.8
asdf reshim nodejs
