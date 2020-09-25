#!/usr/bin/env fish

sudo -v

if not grep -q '/usr/local/bin/fish' /etc/shells
  echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
end
chsh -s /usr/local/bin/fish

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

echo "Install plugins..."
fisher add oh-my-fish/theme-bobthefish
fisher add jethrokuan/z
fisher add 0rax/fish-bd
fisher add oh-my-fish/plugin-peco
fisher add yoshiori/fish-peco_select_ghq_repository
fisher add spentacular/asdf-fish
fisher add daenney/pyenv

echo "Update all plugin..."
fisher self-update
fisher
