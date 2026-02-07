#!/bin/bash

# Disable tmpfs going to RAM
sudo systemctl mask temp.mount

#Get the system up-to-date before any new installations
sudo eopkg -y upgrade

sudo eopkg -y install adwaita-colors-icon-theme
sudo eopkg -y install adwaita-fonts
sudo eopkg -y install adwaita-icon-theme
sudo eopkg -y install akregator
sudo eopkg -y install android-tools
sudo eopkg -y install anoise
sudo eopkg -y install anoise-gui
sudo eopkg -y install anoise-media
sudo eopkg -y install anoise-media-community-extension1
sudo eopkg -y install anoise-media-community-extension2
sudo eopkg -y install anoise-media-community-extension3
sudo eopkg -y install anoise-media-community-extension4
sudo eopkg -y install anoise-media-community-extension5
sudo eopkg -y install arc-icon-theme
sudo eopkg -y install ardour
sudo eopkg -y install arp-scan
sudo eopkg -y install audacious
sudo eopkg -y install audacious-plugins
sudo eopkg -y install audacity
sudo eopkg -y install bcc
sudo eopkg -y install binutils
sudo eopkg -y install bitwarden-cli
sudo eopkg -y install bitwarden-desktop
sudo eopkg -y install bluefish
sudo eopkg -y install brave
sudo eopkg -y install btop
sudo eopkg -y install budgie-backgrounds
sudo eopkg -y install cabextract
sudo eopkg -y install calibre

sudo eopkg -y install vscode
sudo eopkg upgrade -y

sudo eopkg install 

echo "== SETTINGS =="

# Add global git values -- NEEDS CHECKING

#git config --global user.name "Darren Upton"
#git config --global user.email "dbupton@outlook.com"

sudo eopkg clean packages -y

## Git repos
#https://github.com/solus-project/artwork
