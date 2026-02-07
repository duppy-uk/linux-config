#!/bin/bash

# Disable tmpfs going to RAM
systemctl mask temp.mount

#Get the system up-to-date before any new installations
eopkg -y upgrade

# May be better refactored as in this article
# https://superuser.com/questions/508507/linux-bash-script-single-command-but-multiple-lines

eopkg -y install adwaita-colors-icon-theme
eopkg -y install adwaita-fonts
eopkg -y install adwaita-icon-theme
eopkg -y install akregator
eopkg -y install android-tools
eopkg -y install anoise
eopkg -y install anoise-gui
eopkg -y install anoise-media
eopkg -y install anoise-media-community-extension1
eopkg -y install anoise-media-community-extension2
eopkg -y install anoise-media-community-extension3
eopkg -y install anoise-media-community-extension4
eopkg -y install anoise-media-community-extension5
eopkg -y install arc-icon-theme
eopkg -y install ardour
eopkg -y install arp-scan
eopkg -y install audacious
eopkg -y install audacious-plugins
eopkg -y install audacity
eopkg -y install bcc
eopkg -y install binutils
eopkg -y install bitwarden-cli
eopkg -y install bitwarden-desktop
eopkg -y install bluefish
eopkg -y install brave
eopkg -y install btop
eopkg -y install budgie-backgrounds
eopkg -y install cabextract
eopkg -y install calibre
eopkg -y install codeblocks
eopkg -y install codelite
eopkg -y install conky
eopkg -y install darkly
eopkg -y install darktable
eopkg -y install deepin-icon-theme
eopkg -y install deepin-icon-theme-bloom-dark
eopkg -y install deepin-icon-theme-bloom
eopkg -y install deepin-icon-theme-sea
eopkg -y install dejadup
eopkg -y install discord

eopkg -y install solseek
eopkg -y install vscode


echo "== SETTINGS =="

# Add global git values -- NEEDS CHECKING

#git config --global user.name "Darren Upton"
#git config --global user.email "dbupton@outlook.com"

echo "== CLEAN UP =="
eopkg clean packages -y

## Git repos
#https://github.com/solus-project/artwork
