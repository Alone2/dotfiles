echo WARNING: RUN SCRIPT AS USER NOT ROOT

sudo pacman -S ttf-fira-code gnu-free-fonts ttf-hack noto-fonts ttf-roboto dmenu sway rxvt-unicode i3blocks firefox xorg-server-xwayland base-devel dunst

mkdir ~/.config
mkdir ~/.config/sway
mkdir ~/.config/i3blocks

sudo cp .config/sway/config ~/.config/sway/config
sudo cp .Xdefaults ~/.Xdefaults
sudo cp .config/i3blocks/* ~/.config/i3blocks/
sudo cp .bashrc ~/.bashrc
sudo cp .bash_profile ~/.bash_profile

mkdir ~/Temp
cd ~/Temp
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si

