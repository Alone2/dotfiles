echo WARNING: RUN SCRIPT AS USER NOT ROOT

sudo pacman -S ttf-fira-code gnu-free-fonts ttf-hack noto-fonts ttf-roboto rofi i3-gaps rxvt-unicode i3blocks firefox base-devel dunst arc-gtk-theme networkmanager network-manager-applet gtk3 scrot blueman neovim xorg-xinit xorg-server feh bluez

mkdir ~/.config
mkdir ~/.config/i3
mkdir ~/.config/dunst
mkdir ~/.config/compton
mkdir ~/.config/rofi

sudo cp .config/i3/config ~/.config/i3/config
sudo cp .Xresources ~/.Xresources
sudo cp -r .config/i3blocks ~/.config/
sudo cp -r .config/dunst ~/.config/
sudo cp -r .config/compton ~/.config/
sudo cp -r .config/rofi ~/.config/
sudo cp .bashrc ~/.bashrc
sudo cp .bash_profile ~/.bash_profile
sudo cp .xinitrc ~/.xinitrc

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

mkdir ~/Temp
cd ~/Temp
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si

yay -S compton-rounded-corners
