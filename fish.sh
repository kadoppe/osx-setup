#!/usr/bin/env fish

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

echo "Install plugins..."
fisher install omf/theme-bobthefish
fisher install z
fisher install 0rax/fish-bd
fisher install oh-my-fish/plugin-peco
fisher install yoshiori/fish-peco_select_ghq_repository
fisher spentacular/asdf-fish

echo "Update all plugin..."
fisher up
