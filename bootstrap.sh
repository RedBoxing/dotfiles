 #!/bin/bash

echo "[1/] Installing dependencies..."

sudo pacman -S qt5ct kitty dolphin
yay -S kvantum-theme-catppuccin-git catppuccin-gtk-theme-mocha

echo "[2/] Creating symlinks"

ln -s $PWD/.config/kdeglobals ~/.config/kdeglobals
ln -s $PWD/.config/hypr/ ~/.config/hypr/ 
ln -s $PWD/.config/nvim ~/.config/nvim/
ln -s $PWD/.config/waybar ~/.config/waybar/ 
ln -s $PWD/.config/rofi ~/.config/rofi/ 
ln -s $PWD/.config/neofetch ~/.config/neofetch/ 
ln -s $PWD/.config/wpaperd/ ~/.config/wpaperd/
ln -s $PWD/.config/spotify-player/ ~/.config/spotify-player/
ln -s $PWD/.config/gtk-3.0/ ~/.config/gtk-3.0/
ln -s $PWD/.config/xdg-desktop-portal/ ~/.config/xdg-desktop-portal
