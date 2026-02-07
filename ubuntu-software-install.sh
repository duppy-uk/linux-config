#!/bin/bash

# Add additional repositories
add-apt-repository universe
add-apt-repository multiverse
apt update && apt upgrade

# Install software repositories & store

apt install -y -d -v -N flatpak malcontent-gui plasma-discover-backend-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
apt install -y -d -v -N gnome-software gnome-software-plugin-flatpak gnome-software-plugin-snap

# Install VS Code

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor \
  | install -D -o root -g root -m 644 /dev/stdin /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] \
  https://packages.microsoft.com/repos/code stable main" \
  | tee /etc/apt/sources.list.d/vscode.list
apt update
apt install code

# Install small utilities
apt install -y -d -v -N joe nala xfce4-terminal btop onedriver filezilla 
apt install docker.io docker-compose-v2 freerdp3-x11

apt install -y -d -v -N build-essential kubuntu-restricted-extras deja-dup

# Install fonts
apt install -y -d -v -N fonts-cascadia-code fonts-cherrybomb fonts-chomsky fonts-firacode fonts-gnutypewriter fonts-humor-sans fonts-kode-mono fonts-montserrat fonts-opendyslexic fonts-roboto
git clone https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install

apt install -y -d -v -N kdenlive krita akregator tellico krdc ktorrent

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

flatpak install -y  flathub com.github.tchx84.Flatseal
flatpak install -y  flathub io.github.giantpinkrobots.flatsweep
flatpak install -y  flathub io.github.flattool.Warehouse

flatpak install -y  flathub io.github.smallbasic.SmallBASIC
flatpak install -y  flathub io.github.shiftey.Desktop
flatpak install -y  flathub com.jetbrains.RustRover

flatpak install -y  flathub com.vivaldi.Vivaldi
flatpak install -y  flathub com.microsoft.Edge
flatpak install -y  flathub org.pvermeer.WebAppHub
flatpak install -y  flathub io.github.zaedus.spider
flatpak install -y  flathub com.discordapp.Discord
flatpak install -y  flathub org.signal.Signal
flatpak install -y  flathub us.zoom.Zoom
flatpak install -y  flathub com.github.IsmaelMartinez.teams_for_linux

flatpak install -y  flathub com.vivaldi.Vivaldi
flatpak install -y  flathub md.obsidian.Obsidian
flatpak install -y  flathub org.zotero.Zotero
flatpak install -y  flathub com.jgraph.drawio.desktop
flatpak install -y  flathub org.onlyoffice.desktopeditors

flatpak install -y  flathub org.gramps_project.Gramps
# flatpak install -y  flathub org.kde.tellico
flatpak install -y  flathub org.musescore.MuseScore
flatpak install -y  flathub org.audacityteam.Audacity
# flatpak install -y  flathub org.kde.krita
flatpak install -y  flathub in.co.nandakumar.vara
flatpak install -y  flathub xyz.parlatype.Parlatype
flatpak install -y  flathub com.cinecred.cinecred
flatpak install -y  flathub org.jitsi.jitsi-meet
flatpak install -y  flathub com.github.louis77.tuner
flatpak install -y  flathub io.github.Archeb.opentrace
flatpak install -y  flathub io.github.mhogomchungu.media-downloader
flatpak install -y  flathub io.github.prateekmedia.pstube

# Games
apt install -y -d -v -N alien-arena supertux supertuxkart
flatpak install -y  flathub com.mojang.Minecraft
flatpak install -y  flathub org.srb2.SRB2
flatpak install -y  flathub org.kartkrew.RingRacers
flatpak install -y  flathub com.heroicgameslauncher.hgl
