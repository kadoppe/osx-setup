#!/usr/bin/env fish

sudo -v

if not grep -q '/usr/local/bin/fish' /etc/shells
  echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
end
chsh -s /usr/local/bin/fish

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

echo "Install plugins..."
fisher install omf/theme-bobthefish
fisher install z
fisher install 0rax/fish-bd
fisher install oh-my-fish/plugin-peco
fisher install yoshiori/fish-peco_select_ghq_repository
fisher install nvm
fisher spentacular/asdf-fish

echo "Update all plugin..."
fisher up
