#!/bin/bash

HOSTNAME=$(hostname)

hyprpm reload -n &
swaync &

/usr/lib/polkit-gnome-authentication-agent-1 &
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP &
fcitx5 &

wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &
wl-clip-persist --cliphist both

waybar &
wpaperd &
nm-applet &

brave & 
vesktop & 
spotify_player -d 

if [[ $HOSTNAME = "laptop-redboxing" ]]; then
  clight &
  clight-gui --tray
  swayidle -w timeout 1800 "gtklock -d" before-sleep "gtklock -d" &
  thunderbird &

  linux-wallpaperengine --screen-root eDP-1 --scaling fill 875617215 
elif [[ $HOSTNAME = "pc-thomas" ]]; then
  linux-wallpaperengine --screen-root DP-2 --no-audio-processing --fps 60 --disable-mouse --scaling fill 875617215 &
fi

