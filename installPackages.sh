echo WARNING: RUN SCRIPT AS USER NOT ROOT

sudo pacman -Syu

sudo pacman -S ttf-fira-code gnu-free-fonts ttf-hack noto-fonts ttf-roboto rofi i3-gaps rxvt-unicode firefox base-devel dunst gnome-themes-extra networkmanager network-manager-applet gtk3 scrot blueman neovim xorg-xinit xorg-server feh bluez pulseaudio alsa-utils redshift bdf-unifont ttf-dejavu python-pynvim clang

amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager
