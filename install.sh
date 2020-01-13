echo WARNING: RUN SCRIPT AS USER NOT ROOT

sudo pacman -S ttf-fira-code gnu-free-fonts ttf-hack noto-fonts ttf-roboto rofi i3-gaps rxvt-unicode i3blocks firefox base-devel dunst arc-gtk-theme networkmanager network-manager-applet gtk3 scrot blueman neovim xorg-xinit xorg-server feh bluez pulseaudio alsa-utils redshift

amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

mkdir ~/.config
mkdir ~/.config/i3
mkdir ~/.config/i3blocks
mkdir ~/.config/dunst
mkdir ~/.config/compton
mkdir ~/.config/rofi

cp .config/i3/config ~/.config/i3/config
cp .Xresources ~/.Xresources
cp .config/i3blocks/* ~/.config/i3blocks
cp .config/dunst/* ~/.config/dunst
cp .config/compton/* ~/.config/compton
cp .config/rofi/* ~/.config/rofi
cp .bashrc ~/.bashrc
cp .bash_profile ~/.bash_profile
cp .xinitrc ~/.xinitrc

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

mkdir ~/Temp
cd ~/Temp
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si

yay -S compton-rounded-corners i3-volume urxvt-font-size-git
