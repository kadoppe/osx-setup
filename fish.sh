#!/usr/bin/env fish

sudo -v

if not grep -q '/opt/homebrew/bin/fish' /etc/shells
  echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
end
chsh -s /opt/homebrew/bin/fish

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

echo "Install plugins..."
fisher install oh-my-fish/theme-bobthefish
fisher install jethrokuan/z
fisher install 0rax/fish-bd
fisher install oh-my-fish/plugin-peco
fisher install yoshiori/fish-peco_select_ghq_repository
fisher install spentacular/asdf-fish
fisher install daenney/pyenv
fisher install jorgebucaran/nvm.fish 

echo "Update all plugin..."
fisher update
