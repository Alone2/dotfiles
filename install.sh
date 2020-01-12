echo WARNING: RUN SCRIPT AS USER NOT ROOT

sudo pacman -S ttf-fira-code gnu-free-fonts ttf-hack noto-fonts ttf-roboto rofi i3-gaps rxvt-unicode i3blocks firefox xorg-server-xwayland base-devel dunst arc-gtk-theme networkmanager network-manager-applet gtk3

mkdir ~/.config
mkdir ~/.config/sway
mkdir ~/.config/i3blocks
#mkdir ~/.config/environment.d

#sudo cp .config/sway/config ~/.config/sway/config
sudo cp .config/i3/config ~/.config/i3/config
#sudo cp .Xdefaults ~/.Xdefaults
sudo cp .Xresources ~/.Xresources
#sudo cp .config/environment.d/profile.conf ~/.config/environment.d/profile.conf 
sudo cp .config/i3blocks/* ~/.config/i3blocks/
sudo cp .bashrc ~/.bashrc
sudo cp .bash_profile ~/.bash_profile

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

mkdir ~/Temp
cd ~/Temp
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si

