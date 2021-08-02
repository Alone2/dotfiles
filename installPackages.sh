sudo pacman -Syu

sudo pacman -S dunst slurp grim pipewire pipwire-pulse man-db waybar xorg-xinput dmenu xorg-xwayland alacritty sway ttf-fira-code gnu-free-fonts ttf-hack noto-fonts ttf-roboto rofi firefox base-devel gnome-themes-extra networkmanager network-manager-applet gtk3 blueman neovim feh bluez alsa-utils ttf-dejavu python-pynvim clang python python-jedi xclip npm ttf-font-awesome ranger xdg-utils breeze-icons tmux --noconfirm

amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

# enable bluetooth
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
