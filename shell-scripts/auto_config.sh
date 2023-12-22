#!/bin/zsh

# Instalando yay
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

# Obsidian/Scynthing
mkdir ~/syncthing
yay -S obsidian syncthing
git clone git@github.com:LuanAccioly/obsidian-notes.git
systemctl enable --now syncthing@accioly.service