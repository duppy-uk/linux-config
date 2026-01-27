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

sudo snap install obsidian --classic
