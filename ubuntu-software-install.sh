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
apt install -y joe nala xfce4-terminal btop onedriver filezilla 

apt install -y build-essential kubuntu-restricted-extras deja-dup

# Install fonts
apt install -y fonts-cascadia-code fonts-cherrybomb fonts-chomsky fonts-firacode fonts-gnutypewriter fonts-humor-sans fonts-kode-mono fonts-montserrat fonts-opendyslexic fonts-roboto
git clone https://github.com/ryanoasis/nerd-fonts

apt install -y kdenlive krita akregator tellico krdc

# Install snaps

snap install snap-store
snap install obsidian --classic
snap install code --classic
snap install pycharm --classic
snap install vivaldi
snap install telegram-desktop
snap install copilot-desktop
snap install deepseek-desktop

snap install discord
snap connect discord:system-observe

# sudo snap install musescore
# sudo snap connect musescore:cups-control
# sudo snap connect musescore:network-manager
# sudo snap connect musescore:alsa
# sudo snap connect musescore:removable-media

snap install pocket-casts
snap install apple-music-for-linux

snap install mc-installer
snap install steam

# Install flatpaks

flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub io.github.giantpinkrobots.flatsweep
flatpak install flathub io.github.flattool.Warehouse

flatpak install flathub io.github.smallbasic.SmallBASIC
flatpak install flathub io.github.shiftey.Desktop
flatpak install flathub com.jetbrains.RustRover

flatpak install flathub com.vivaldi.Vivaldi
flatpak install flathub com.microsoft.Edge
flatpak install flathub org.pvermeer.WebAppHub
flatpak install flathub io.github.zaedus.spider
flatpak install flathub com.discordapp.Discord
flatpak install flathub org.signal.Signal
flatpak install flathub us.zoom.Zoom
flatpak install flathub com.github.IsmaelMartinez.teams_for_linux

flatpak install flathub com.vivaldi.Vivaldi
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub org.zotero.Zotero
flatpak install flathub com.jgraph.drawio.desktop
flatpak install flathub org.onlyoffice.desktopeditors

flatpak install flathub org.gramps_project.Gramps
# flatpak install flathub org.kde.tellico
flatpak install flathub org.musescore.MuseScore
flatpak install flathub org.audacityteam.Audacity
# flatpak install flathub org.kde.krita
flatpak install flathub in.co.nandakumar.vara
flatpak install flathub xyz.parlatype.Parlatype
flatpak install flathub com.cinecred.cinecred
flatpak install flathub org.jitsi.jitsi-meet
flatpak install flathub com.github.louis77.tuner
flatpak install flathub io.github.Archeb.opentrace
flatpak install flathub io.github.mhogomchungu.media-downloader
flatpak install flathub io.github.prateekmedia.pstube

# Games
apt install -y alien-arena supertux supertuxkart
flatpak install flathub com.mojang.Minecraft
flatpak install flathub org.srb2.SRB2
flatpak install flathub org.kartkrew.RingRacers
flatpak install flathub com.heroicgameslauncher.hgl
