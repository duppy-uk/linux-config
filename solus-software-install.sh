#!/bin/bash

# Disable tmpfs going to RAM
sudo systemctl mask temp.mount

#Get the system up-to-date before any new installations
sudo eopkg -y -d -v -N upgrade

sudo eopkg -y -d -v -N install adwaita-colors-icon-theme
sudo eopkg -y -d -v -N install adwaita-fonts
sudo eopkg -y -d -v -N install adwaita-icon-theme
sudo eopkg -y -d -v -N install akregator
sudo eopkg -y -d -v -N install android-tools
sudo eopkg -y -d -v -N install anoise
sudo eopkg -y -d -v -N install anoise-gui
sudo eopkg -y -d -v -N install anoise-media
sudo eopkg -y -d -v -N install anoise-media-community-extension1
sudo eopkg -y -d -v -N install anoise-media-community-extension2
sudo eopkg -y -d -v -N install anoise-media-community-extension3
sudo eopkg -y -d -v -N install anoise-media-community-extension4
sudo eopkg -y -d -v -N install anoise-media-community-extension5
sudo eopkg -y -d -v -N install arc-icon-theme
sudo eopkg -y -d -v -N install ardour
sudo eopkg -y -d -v -N install arp-scan
sudo eopkg -y -d -v -N install audacious
sudo eopkg -y -d -v -N install audacious-plugins
sudo eopkg -y -d -v -N install audacity
sudo eopkg -y -d -v -N install bcc
sudo eopkg -y -d -v -N install binutils
sudo eopkg -y -d -v -N install bitwarden-cli
sudo eopkg -y -d -v -N install bitwarden-desktop
sudo eopkg -y -d -v -N install bluefish
sudo eopkg -y -d -v -N install brave
sudo eopkg -y -d -v -N install btop
sudo eopkg -y -d -v -N install budgie-backgrounds
sudo eopkg -y -d -v -N install cabextract
sudo eopkg -y -d -v -N install calibre

sudo eopkg -y -d -v -N install vscode
sudo eopkg upgrade -y -d -v -N

sudo eopkg install 

echo "== SETTINGS =="
# Add global git values
git config --global user.name "Darren Upton"
git config --global user.email "dbupton@outlook.com"

sudo eopkg clean packages -y -d -v -N

## Git repos
#https://github.com/solus-project/artwork
