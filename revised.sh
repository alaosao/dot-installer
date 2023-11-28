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
NEO_URL="https://github.com/dylanaraps/neofetch/archive/7.1.0.tar.gz"
NEO_DESTINATION="./neofetch-7.1.0.tar.gz"
log "Downloading and installing neofetch..."
curl -L -o "$NEO_DESTINATION" "$NEO_URL"
tar -xf "$NEO_DESTINATION" && cd neofetch-7.1.0 && make install
log "Neofetch installed."

# Sleep for 15 seconds
sleep 15

# ------------------------------------
# download polybar

POLY_URL="[enter polybar github]"
POLY_DESTINATION="[enter polybar destination]"

curl -L -o "$POLY_DESTINATION" "$POLY_URL" #download
tar -xf "$POLY_DESTINATION" # extract

cd [polybar] #enter file
make install #install
Echo “Polybar installed from github repo”
log() {
    echo "$(date +"%H:%M:%S: Polybar installed….")”
}

Sleep (25s)

# ------------------------------------
#download rofi

ROFI_URL="[enter ROFI github]"
ROFI_DESTINATION="[enter ROFI destination]"

curl -L -o "$ROFI_DESTINATION" "$ROFI_URL" #download
tar -xf "$ROFI_DESTINATION" # extract

cd [polybar] #enter file
make install #install
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
