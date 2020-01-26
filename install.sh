echo WARNING: RUN SCRIPT AS USER NOT ROOT

sudo pacman -Syu

sudo pacman -S ttf-fira-code gnu-free-fonts ttf-hack noto-fonts ttf-roboto rofi i3-gaps rxvt-unicode firefox base-devel dunst arc-gtk-theme networkmanager network-manager-applet gtk3 scrot blueman neovim xorg-xinit xorg-server feh bluez pulseaudio alsa-utils redshift	bdf-unifont ttf-dejavu

amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

mkdir ~/.config
mkdir ~/.config/i3
mkdir ~/.config/polybar
mkdir ~/.config/dunst
mkdir ~/.config/compton
mkdir ~/.config/rofi
mkdir ~/.config/nvim
mkdir ~/.wallpaper

cp config/i3/config ~/.config/i3/config
cp .Xresources ~/.Xresources
cp config/polybar/* ~/.config/polybar
cp config/dunst/* ~/.config/dunst
cp config/compton/* ~/.config/compton
cp config/rofi/* ~/.config/rofi
cp config/nvim/* ~/.config/nvim
cp .bashrc ~/.bashrc
cp .bash_profile ~/.bash_profile
cp .xinitrc ~/.xinitrc
cp .fehbgLOWBAT ~/.fehbgLOWBAT 
cp ./wallpaper/default.png ~/.wallpaper/default.png
cp ./wallpaper/black.png ~/.wallpaper/black.png

echo -e "#!""/bin/sh\nfeh --no-fehbg --bg-fill '$HOME/.wallpaper/black.png'" > ~/.fehbgLOWBAT
chmod +x ~/.fehbgLOWBAT

if [ ! -f "~/.fehbg" ];
then 
	echo -e "#!""/bin/sh\nfeh --no-fehbg --bg-fill '$HOME/.wallpaper/default.png'" > ~/.fehbg
	chmod +x ~/.fehbg
fi

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

mkdir ~/Temp
cd ~/Temp
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si

yay -S i3-volume urxvt-font-size-git neovim-youcompleteme-core-git neovim-plug siji-git polybar

nvim -E +PlugInstall +qall

