sudo apt update

# Install software repositories & store

sudo apt install -y flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo apt install -y gnome-software gnome-software-plugin-flatpak gnome-software-plugin-snap

# Install small utilities
sudo apt install -y joe nala gnome-shell-extension-manager xfce4-terminal

