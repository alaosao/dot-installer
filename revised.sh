#!/bin/bash

LOG_FILE="dotfile.log"
exec > >(tee -a "$LOG_FILE") 2>&1

log() {
    echo "$(date +"%H:%M:%S"): $1"
}

# System update
log "Starting system update..."
sudo pacman -Syy
sudo pacman -Syu
log "System updated. Proceeding..."

# Install yay
if ! command -v yay &>/dev/null; then
    log "yay is not installed. Downloading and installing..."
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    log "yay has been installed!"
else
    log "yay is already installed!"
fi

# Sleep for 20 seconds
sleep 20

# Install neofetch
yay -S neofetch

# Sleep for 15 seconds
sleep 15

# ------------------------------------
# download polybar


git clone https://github.com/polybar/polybar
cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
log "Polybar installed from GitHub repo."

Sleep 25

# ------------------------------------
#download rofi

git clone https://github.com/davatorium/rofi.git
cd rofi
autoreconf -i
mkdir build
cd build
../configure
make
sudo make install

Echo “Rofi installed from github repo”
log() {
    echo "$(date +"%H:%M:%S: Rofi installed….")”
}

# Sleep for 25 seconds
sleep 25

# Install spicetify and spotifyd
yay -S spotifyd
sleep 140
sudo chmod a+wr /usr/share/spotify
sudo chmod a+wr /usr/share/spotify/Apps -R
log "Spotify installed from AUR."

yay -S spicetify-cli
sleep 60
spicetify apply
log "Spicetify installed from AUR."

# Sleep for 60 seconds
sleep 60

# Install firefox and zathura
sudo pacman -S firefox
log "Firefox installed from official repositories."

yay -S zathura
log "Zathura installed from AUR."

# Install fish shell
if ! command -v fish &>/dev/null; then
    log "fish is not installed. Downloading and installing..."
    sudo pacman -S fish
    log "Fish installed from official repositories."
else
    log "fish is already installed!"
fi

# Add more installations here...

# Sleep for 60 seconds
sleep 60

# Install kitty
if ! command -v kitty &>/dev/null; then
    log "kitty is not installed. Downloading and installing..."
    git clone https://aur.archlinux.org/kitty-git.git
    cd kitty-git && makepkg -si --noconfirm
    cd ..
    log "kitty has been installed!"
else
    log "kitty is already installed!"
fi

log "Dolphin is not installed. Downloading and installing..."
sudo pacman -S dolphin
log "Dolphin installed from official repositories."

# Add more installations here...

# Run Python scripts
log "Running Python scripts..."
subprocess_python_script "path/to/script1.py"
subprocess_python_script "path/to/script2.py"
subprocess_python_script "path/to/script3.py"

subprocess_python_script() {
    script_path="$1"
    output=$(python "$script_path")
    log "Output: $output"
}

log "Installation script completed."
