#!/bin/bash

# Disable tmpfs going to RAM
systemctl mask temp.mount

#Get the system up-to-date before any new installations
eopkg -y -d -v -N upgrade

# May be better refactored as in this article
# https://superuser.com/questions/508507/linux-bash-script-single-command-but-multiple-lines

eopkg -y -d -v -N install adwaita-colors-icon-theme
eopkg -y -d -v -N install adwaita-fonts
eopkg -y -d -v -N install adwaita-icon-theme
eopkg -y -d -v -N install akregator
eopkg -y -d -v -N install android-tools
eopkg -y -d -v -N install anoise
eopkg -y -d -v -N install anoise-gui
eopkg -y -d -v -N install anoise-media
eopkg -y -d -v -N install anoise-media-community-extension1
eopkg -y -d -v -N install anoise-media-community-extension2
eopkg -y -d -v -N install anoise-media-community-extension3
eopkg -y -d -v -N install anoise-media-community-extension4
eopkg -y -d -v -N install anoise-media-community-extension5
eopkg -y -d -v -N install arc-icon-theme
eopkg -y -d -v -N install ardour
eopkg -y -d -v -N install arp-scan
eopkg -y -d -v -N install audacious
eopkg -y -d -v -N install audacious-plugins
eopkg -y -d -v -N install audacity
eopkg -y -d -v -N install bcc
eopkg -y -d -v -N install binutils
eopkg -y -d -v -N install bitwarden-cli
eopkg -y -d -v -N install bitwarden-desktop
eopkg -y -d -v -N install bluefish
eopkg -y -d -v -N install brave
eopkg -y -d -v -N install btop
eopkg -y -d -v -N install budgie-backgrounds
eopkg -y -d -v -N install cabextract
eopkg -y -d -v -N install calibre
eopkg -y -d -v -N install cinelerra-gg
eopkg -y -d -v -N install codeblocks
eopkg -y -d -v -N install codelite
eopkg -y -d -v -N install conky
eopkg -y -d -v -N install conky-manager
eopkg -y -d -v -N install darkly
eopkg -y -d -v -N install darktable
eopkg -y -d -v -N install deepin-icon-theme
eopkg -y -d -v -N install deepin-icon-theme-bloom-dark
eopkg -y -d -v -N install deepin-icon-theme-bloom
eopkg -y -d -v -N install deepin-icon-theme-sea
eopkg -y -d -v -N install deja-dup
eopkg -y -d -v -N install discord
eopkg -y -d -v -N install distrobox
eopkg -y -d -v -N install element
eopkg -y -d -v -N install etcher
eopkg -y -d -v -N install fastfetch
eopkg -y -d -v -N install filezilla
eopkg -y -d -v -N install fish
eopkg -y -d -v -N install font-awesome-ttf
eopkg -y -d -v -N install font-clear-sans-ttf
eopkg -y -d -v -N install font-firecode-ttf
eopkg -y -d -v -N install font-firago
eopkg -y -d -v -N install font-fira-ttf
eopkg -y -d -v -N install font-ibm-plex-ttf
eopkg -y -d -v -N install font-intel-one-mono-ttf
eopkg -y -d -v -N install font-inter
eopkg -y -d -v -N install font-iosevka-ttf
eopkg -y -d -v -N install font-jetbrainsmono-ttf
eopkg -y -d -v -N install font-opendyslexic-otf
eopkg -y -d -v -N install font-overpass-otf
eopkg -y -d -v -N install font-roboto-ttf
eopkg -y -d -v -N install font-sarasa-gothic
eopkg -y -d -v -N install font-tt2020-ttf
eopkg -y -d -v -N install freeplane
eopkg -y -d -v -N install freerdp
eopkg -y -d -v -N install gcc
eopkg -y -d -v -N install gcobol
eopkg -y -d -v -N install gfortran
eopkg -y -d -v -N install g++
eopkg -y -d -v -N install git
eopkg -y -d -v -N install git-cola
eopkg -y -d -v -N install github-cli
eopkg -y -d -v -N install gnome-software
eopkg -y -d -v -N install golang
eopkg -y -d -v -N install gparted
eopkg -y -d -v -N install gramps
eopkg -y -d -v -N install handbrake
eopkg -y -d -v -N install hedgewars
eopkg -y -d -v -N install heroic-games-launcher
eopkg -y -d -v -N install inkscape
eopkg -y -d -v -N install ipscan
eopkg -y -d -v -N install joe
eopkg -y -d -v -N install just
eopkg -y -d -v -N install k3b
eopkg -y -d -v -N install krdc
eopkg -y -d -v -N install kdenlive
eopkg -y -d -v -N install kdevelop
eopkg -y -d -v -N install krita
eopkg -y -d -v -N install ktorrent
eopkg -y -d -v -N install la-capitaine-icon-theme
eopkg -y -d -v -N install minigalaxy
eopkg -y -d -v -N install moka-icon-theme
eopkg -y -d -v -N install musescore
eopkg -y -d -v -N install onedrive-gui
eopkg -y -d -v -N install palapeli
eopkg -y -d -v -N install paper-icon-theme
eopkg -y -d -v -N install parlatype
eopkg -y -d -v -N install plasma-workspace-wallpapers
eopkg -y -d -v -N install plata-theme
eopkg -y -d -v -N install powerlevel10k
eopkg -y -d -v -N install powerline-fonts
eopkg -y -d -v -N install prism-launcher
eopkg -y -d -v -N install projectlibre
eopkg -y -d -v -N install quickemu
eopkg -y -d -v -N install rssguard
eopkg -y -d -v -N install rsync
eopkg -y -d -v -N install rust
eopkg -y -d -v -N install rustup
eopkg -y -d -v -N install sane-airscan
eopkg -y -d -v -N install scrcpy
eopkg -y -d -v -N install scribus
eopkg -y -d -v -N install signal-desktop
eopkg -y -d -v -N install skanlite
eopkg -y -d -v -N install skanpage
eopkg -y -d -v -N install solseek
eopkg -y -d -v -N install steam
eopkg -y -d -v -N install supertuxkart
eopkg -y -d -v -N install supertux
eopkg -y -d -v -N install surfn-arch-blue-icon-theme
eopkg -y -d -v -N install surfn-arched-icon-theme
eopkg -y -d -v -N install surfn-arc-icon-theme
eopkg -y -d -v -N install surfn-breeze-arc-icon-theme
eopkg -y -d -v -N install surfn-breeze-dark-icon-theme
eopkg -y -d -v -N install surfn-dracul-icon-theme
eopkg -y -d -v -N install surfn-evopop-icon-theme
eopkg -y -d -v -N install surfn-icon-theme
eopkg -y -d -v -N install surfn-luv-icon-theme
eopkg -y -d -v -N install surfn-luv-red-icon-theme
eopkg -y -d -v -N install surfn-majestic-icon-theme
eopkg -y -d -v -N install surfn-mint-x-grey-icon-theme
eopkg -y -d -v -N install surfn-numix-icon-theme
eopkg -y -d -v -N install surfn-numix-misty-icon-theme
eopkg -y -d -v -N install surfn-numix-polo-icon-theme
eopkg -y -d -v -N install surfn-numixs-icon-theme
eopkg -y -d -v -N install surfn-orange-icon-theme
eopkg -y -d -v -N install surfn-papirus-blue-icon-theme
eopkg -y -d -v -N install surfn-papirus-casablanca-icon-theme
eopkg -y -d -v -N install surfn-papirus-grey-icon-theme
eopkg -y -d -v -N install surfn-qogir-icon-theme
eopkg -y -d -v -N install surfn-tela-icon-theme
eopkg -y -d -v -N install surfn-vertexed-icon-theme
eopkg -y -d -v -N install surfn-vimix-black-icon-theme
eopkg -y -d -v -N install suru-plus-icon-theme
eopkg -y -d -v -N install tailscale
eopkg -y -d -v -N install telegram
eopkg -y -d -v -N install thonny
eopkg -y -d -v -N install vivaldi-stable
eopkg -y -d -v -N install vlc
eopkg -y -d -v -N install vscode
eopkg -y -d -v -N install xfce4-terminal
eopkg -y -d -v -N install zed
eopkg -y -d -v -N install zsh

echo "== APPLICATIONS =="
flatpak install -y  flathub org.alienarena.alienarena
flatpak install -y  flathub com.google.AndroidStudio
flatpak install -y  flathub io.github.prateekmedia.appimagepool
flatpak install -y  flathub net.cubers.assault.AssaultCube
flatpak install -y  flathub ca.victorz.acr.AssaultCubeReloaded
flatpak install -y  flathub io.github.ebonjaeger.bluejay
flatpak install -y  flathub io.github.dvlv.boxbuddyrs
flatpak install -y  flathub page.codeberg.censor.Censor
flatpak install -y  flathub com.ranfdev.DistroShelf
flatpak install -y  flathub org.kartkrew.RingRacers
flatpak install -y  flathub com.jgraph.drawio.desktop
flatpak install -y  flathub org.eclipse.Java
flatpak install -y  flathub io.github.getnf.embellish
flatpak install -y  flathub com.github.tchx84.Flatseal
flatpak install -y  flathub io.github.giantpinkrobots.flatsweep
flatpak install -y  flathub me.hyliu.fluentreader
flatpak install -y  flathub io.freetubeapp.FreeTube
flatpak install -y  flathub com.frogatto.Frogatto
flatpak install -y  flathub io.github.shiftey.Desktop
flatpak install -y  flathub com.jetbrains.IntelliJ-IDEA-Community
flatpak install -y  flathub net.lutris.Lutris
flatpak install -y  flathub com.microsoft.Edge
flatpak install -y  flathub com.github.phase1geo.minder
flatpak install -y  flathub com.mojang.Minecraft
flatpak install -y  flathub io.mrarm.mcpelauncher
flatpak install -y  flathub org.apache.netbeans
flatpak install -y  flathub md.obsidian.Obsidian
flatpak install -y  flathub org.onlyoffice.desktopeditors
flatpak install -y  flathub com.github.IsmaelMartinez.teams_for_linux
flatpak install -y  flathub io.github.prateekmedia.pstube
flatpak install -y  flathub com.jetbrains.RustRover
flatpak install -y  flathub edu.mit.Scratch
flatpak install -y  flathub de.haeckerfelix.Shortwave
flatpak install -y  flathub org.srb2.SRB2
flatpak install -y  flathub org.srb2.SRB2Kart
flatpak install -y  flathub org.sonic3air.Sonic3AIR
flatpak install -y  flathub com.rocksandpaper.syndic
flatpak install -y  flathub com.moddb.TotalChaos
flatpak install -y  flathub com.moddb.TotalChaosRetro
flatpak install -y  flathub io.sourceforge.trigger_rally.TriggerRally
flatpak install -y  flathub com.ktechpit.whatsie
flatpak install -y  flathub com.realm667.Wolfenstein_Blade_of_Agony
flatpak install -y  flathub app.xmcl.voxelum
flatpak install -y  flathub us.zoom.Zoom

echo "== SETTINGS =="

# Add global git values -- NEEDS CHECKING

#git config --global user.name "duppy-uk"
#git config --global user.email "dbupton@outlook.com"

echo "== CLEAN UP =="
eopkg clean packages -y -d -v -N

## Git repos
#https://github.com/solus-project/artwork
