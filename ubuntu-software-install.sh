#!/bin/bash

# Add additional repositories
add-apt-repository universe
add-apt-repository multiverse
apt update && apt upgrade

# Install software repositories & store

apt install -y flatpak malcontent-gui plasma-discover-backend-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
apt install -y gnome-software gnome-software-plugin-flatpak gnome-software-plugin-snap

# Install small utilities
apt install -y joe nala xfce4-terminal btop onedriver

apt install -y build-essential kubuntu-restricted-extras

# Install fonts
apt install -y fonts-cascadia-code fonts-cherrybomb fonts-chomsky fonts-firacode fonts-gnutypewriter fonts-humor-sans fonts-kode-mono fonts-montserrat fonts-opendyslexic fonts-roboto
git clone https://github.com/ryanoasis/nerd-fonts

apt install -y kdenlive krita

# Install snaps

sudo snap install snap-store
sudo snap install obsidian --classic
sudo snap install code --classic
sudo snap install pycharm --classic
sudo snap install vivaldi
sudo snap install telegram-desktop
sudo snap install copilot-desktop
sudo snap install deepseek-desktop

sudo snap install discord
snap connect discord:system-observe

sudo snap install musescore
sudo snap connect musescore:cups-control
sudo snap connect musescore:network-manager
sudo snap connect musescore:alsa
sudo snap connect musescore:removable-media

sudo snap install pocket-casts
sudo snap install apple-music-for-linux

sudo snap install mc-installer
sudo snap install steam

# Install flatpaks
flatpak install flathub md.obsidian.Obsidian

