sudo pacman -Syu

sudo pacman -S ttf-fira-code gnu-free-fonts ttf-hack noto-fonts ttf-roboto rofi i3-gaps rxvt-unicode firefox base-devel dunst gnome-themes-extra networkmanager network-manager-applet gtk3 scrot blueman neovim xorg-xinit xorg-server feh bluez pulseaudio alsa-utils redshift bdf-unifont ttf-dejavu python-pynvim clang python xclip node ttf-font-awesome ranger w3m xdg-utils --noconfirm

sudo echo "[Desktop Entry]
Type=Application
Name=ranger (urxvt)
Comment=Launches the ranger file manager
Icon=utilities-terminal
Terminal=false
Exec=urxvt -e /bin/bash -c "ranger %F && /bin/bash"
Categories=System;FileTools;FileManager
MimeType=inode/directory;
Keywords=File;Manager;Browser;Explorer;Launcher;Vi;Vim;Python" > /usr/share/applications/rangerurxvt.desktop

amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
xdg-mime default rangerurxvt.desktop inode/directory
