#!/usr/bin/env fish
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash

nvm install v8.8.1
npm install -g npm@3.8.8
