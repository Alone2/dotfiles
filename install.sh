echo WARNING: RUN SCRIPT AS USER NOT ROOT

sudo pacman -S ttf-fira-code gnu-free-fonts ttf-hack noto-fonts ttf-roboto rofi i3-gaps rxvt-unicode i3blocks firefox base-devel dunst arc-gtk-theme networkmanager network-manager-applet gtk3 scrot blueman neovim xorg-xinit xorg-server

mkdir ~/.config
mkdir ~/.config/i3

sudo cp .config/i3/config ~/.config/i3/config
sudo cp .Xresources ~/.Xresources
sudo cp .config/i3blocks ~/.config/
sudo cp .config/dunst ~/.config/
sudo cp .config/compton ~/.config/
sudo cp .config/rofi ~/.config/
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
