sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo apt update

# Install software repositories & store

sudo apt install -y flatpak malcontent-gui plasma-discover-backend-flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo apt install -y gnome-software gnome-software-plugin-flatpak gnome-software-plugin-snap

# Install small utilities
sudo apt install -y joe nala xfce4-terminal btop onedriver
sudo apt install -y fonts-cascadia-code fonts-cherrybomb fonts-chomsky fonts-firacode fonts-gnutypewriter fonts-humor-sans fonts-kode-mono fonts-montserrat fonts-opendyslexic fonts-roboto
sudo apt install -y build-essential kubuntu-restricted-extras
