#!/bin/bash

LOG_FILE="dotfile.log"
exec > >(tee -a "$LOG_FILE") 2>&1

log() {
    echo "$(date +"%H:%M:%S: Starting script….")”
}

Sudo pacman -Syy
Sudo pacman -Syu

log() {
    echo "$(System updated")”
}
Echo “System updated…proceeding”


if ! command -v yay &>/dev/null; then
    echo "yay is not installed. Downloading and installing..."
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    echo "yay has been installed!"
log() {
    echo "$(yay has been installed")”
}
else
    echo "yay is already installed!"
log() {
    echo "$(Sys found yay")”
}
fi

Sleep (20s)
# ------------------------------------
# download neofetch

NEO_URL="https://github.com/dylanaraps/neofetch/archive/7.1.0.tar.gz"
NEO_DESTINATION="./neofetch-7.1.0.tar.gz"

curl -L -o "$NEO_DESTINATION" "$NEO_URL" #download
tar -xf "$NEO_DESTINATION" # extract

cd neofetch-7.1.0 #enter file
make install #install
Echo “Neofetch installed from github repo”
log() {
    echo "$(date +"%H:%M:%S: Neofetch installed….")”
}

Sleep (15s)
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

# —-------------------------------------
#download spicetify + spotify

yay -S spotifyd

Sleep (140s)

sudo chmod a+wr /usr/share/spotify
sudo chmod a+wr /usr/share/spotify/Apps -R

Echo “Spotify installed from AUR”
log() {
    echo "$(date +"%H:%M:%S: Spotify installed….")”
}

yay -S spicetify-cli

Sleep (60s)

Spicetify apply

Echo “Spicetify installed from AUR”
log() {
    echo "$(date +"%H:%M:%S: Spicetify installed….")”
}

Sleep (60s)

# —-------------------------------------
#download firefox + zathura

sudo pacman -S firefox

Echo “Firefox installed from AUR”
log() {
    echo "$(date +"%H:%M:%S: Firefox installed….")”
}

Yay -s Zathura

Echo “Zathura installed from AUR”
log() {
    echo "$(date +"%H:%M:%S: Zathura installed….")”
}

# —-------------------------------------













if ! command -v fish &>/dev/null; then
    echo "fish is not installed. Downloading and installing..."
    Pacman -S fish
    echo "fish has been installed!"
Echo “Fish installed from AUR”
log() {
    echo "$(date +"%H:%M:%S: Installing Fish….")”
}
Else
log() {
    echo "$(date +"%H:%M:%S: Sys found fish….")”
}
Fi

if ! command -v kitty&>/dev/null; then
    echo "kitty is not installed. Downloading and installing..."
    git clone https://aur.archlinux.org/kitty-git.git
    makepkg -si --noconfirm
    cd ..
    echo "kitty has been installed!"
log() {
    echo "$(date +"%H:%M:%S: Installed Fish.")”
}
else
    echo "kitty is already installed!"
log() {
    echo "$(date +"%H:%M:%S: Sys found fish.")”
}
Fi

echo "Dolphin is not installed. Downloading and installing..."
sudo pacman -S dolphin
echo "Dolphin has been installed!"
log() {
    echo "$(date +"%H:%M:%S: Dolphin installed….")”
}

# subprocess run [rice-configs (rcg.py)

subprocess_python_script "path/to/script.[py]"

subprocess_python_script() {
    script_path="$1"
    output=$(python "$script_path")
    echo "Output: $output"
}

# subprocess run [checker.py] 

subprocess_python_script "path/to/script.[py]"

subprocess_python_script() {
    script_path="$1"
    output=$(python "$script_path")
    echo "Output: $output"
}

# subprocess run [checker.py] 

subprocess_python_script "path/to/script.[py]"

subprocess_python_script() {
    script_path="$1"
    output=$(python "$script_path")
    echo "Output: $output"
}







#yay - [RNN]
#rofi - [NR]
#polybar - [NR]
#zathura - [NR]
#neofetch - [RNN/NR]
#spotify [RNN]
#spicetify [RNN]
#firefox [NR]
#fish [RNN]
#kitty – terminal emulator [NR]
#dolphin - [RNN]



