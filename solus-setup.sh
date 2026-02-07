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
eopkg -y install conky-manager
eopkg -y install darkly
eopkg -y install darktable
eopkg -y install deepin-icon-theme
eopkg -y install deepin-icon-theme-bloom-dark
eopkg -y install deepin-icon-theme-bloom
eopkg -y install deepin-icon-theme-sea
eopkg -y install dejadup
eopkg -y install discord
eopkg -y install distrobox
eopkg -y install element
eopkg -y install etcher
eopkg -y install fastfetch
eopkg -y install filezilla
eopkg -y install fish
eopkg -y install font-awesome-ttf
eopkg -y install font-clear-sans-ttf
eopkg -y install font-fireacode-ttf
eopkg -y install font-firago
eopkg -y install font-fira-ttf
eopkg -y install font-ibm-plex-ttf
eopkg -y install font-intel-one-mono-ttf
eopkg -y install font-inter
eopkg -y install font-iosevka-ttf
eopkg -y install font-jetbrainsmono-ttf
eopkg -y install font-opendyslexic-otf
eopkg -y install font-overpass-otf
eopkg -y install font-roboto-ttf
eopkg -y install font-sarasa-gothic
eopkg -y install font-tt2020-ttf
eopkg -y install freerdp
eopkg -y install gcc
eopkg -y install gcobol
eopkg -y install gfortran
eopkg -y install g++
eopkg -y install git
eopkg -y install git-cola
eopkg -y install github-cli
eopkg -y install gnome-software
eopkg -y install golang
eopkg -y install gparted
eopkg -y install gramps
eopkg -y install handbrake
eopkg -y install hedgewars
eopkg -y install heroic-games-launcher
eopkg -y install inkscape
eopkg -y install ipscan
eopkg -y install joe
eopkg -y install just
eopkg -y install k3b
eopkg -y install kaffine
eopkg -y install kdenlive
eopkg -y install kdevelop
eopkg -y install krita
eopkg -y install ktorrent
eopkg -y install lacapitaine-icon-theme
eopkg -y install minigalaxy
eopkg -y install moka-icon-theme
eopkg -y install musescore
eopkg -y install onedrive-gui
eopkg -y install paper-icon-theme
eopkg -y install parlatype
eopkg -y install plasma-workspace-wallpapers
eopkg -y install plata-theme
eopkg -y install powerlevel10k
eopkg -y install powerline-fonts
eopkg -y install quickemu
eopkg -y install rsync
eopkg -y install rust
eopkg -y install rustup
eopkg -y install sane-airscan
eopkg -y install scrcpy
eopkg -y install signal-desktop
eopkg -y install skanlite
eopkg -y install skanpage
eopkg -y install solseek
eopkg -y install steam
eopkg -y install supertuxkart
eopkg -y install supertux
eopkg -y install surfn-arch-blue-icon-theme
eopkg -y install surfn-arched-icon-theme
eopkg -y install surfn-arc-icon-theme
eopkg -y install surfn-breeze-arc-icon-theme
eopkg -y install surfn-breeze-dark-icon-theme
eopkg -y install surfn-dracul-icon-theme
eopkg -y install surfn-evopop-icon-theme
eopkg -y install surfn-icon-theme
eopkg -y install surfn-luv-icon-theme
eopkg -y install surfn-luv-red-icon-theme
eopkg -y install surfn-majestic-icon-theme
eopkg -y install surfn-mint-x-grey-icon-theme
eopkg -y install surfn-numix-icon-theme
eopkg -y install surfn-numix-misty-icon-theme
eopkg -y install surfn-numix-polo-icon-theme
eopkg -y install surfn-numixs-icon-theme
eopkg -y install surfn-orange-icon-theme
eopkg -y install surfn-papirus-blue-icon-theme
eopkg -y install surfn-papirus-casablanca-icon-theme
eopkg -y install surfn-papirus-grey-icon-theme
eopkg -y install surfn-qogir-icon-theme
eopkg -y install surfn-tela-icon-theme
eopkg -y install surfn-vertexed-icon-theme
eopkg -y install surfn-black-icon-theme
eopkg -y install suru-plus-icon-theme
eopkg -y install tailscale
eopkg -y install telegram
eopkg -y install thonny
eopkg -y install vivaldi-stable
eopkg -y install vlc
eopkg -y install vscode
eopkg -y install xfce4-terminal
eopkg -y install zed
eopkg -y install zsh

echo "== APPLICATIONS =="
eopkg -y install ardour
eopkg -y install audacity

echo "== SETTINGS =="

# Add global git values -- NEEDS CHECKING

#git config --global user.name "Darren Upton"
#git config --global user.email "dbupton@outlook.com"

echo "== CLEAN UP =="
eopkg clean packages -y

## Git repos
#https://github.com/solus-project/artwork
