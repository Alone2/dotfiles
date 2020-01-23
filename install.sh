echo WARNING: RUN SCRIPT AS USER NOT ROOT

sudo pacman -Syu

sudo pacman -S ttf-hack rofi i3-gaps rxvt-unicode i3blocks dunst arc-gtk-theme networkmanager network-manager-applet gtk3 scrot vim xorg-xinit xorg-server feh bluez pulseaudio alsa-utils xorg-xbacklight git arch-install-scripts netcat nmap sudo fakeroot binutils qutebrowser libeatmydata

amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

mkdir ~/.wallpaper
mkdir ~/.config
mkdir ~/.config/i3
mkdir ~/.config/i3blocks
mkdir ~/.config/dunst
mkdir ~/.config/rofi

cp config/i3/config ~/.config/i3/config
cp .Xresources ~/.Xresources
cp config/i3blocks/* ~/.config/i3blocks
cp config/dunst/* ~/.config/dunst
cp config/rofi/* ~/.config/rofi
cp wallpaper/* ~/.wallpaper
cp .bashrc ~/.bashrc
cp .bash_profile ~/.bash_profile
cp .xinitrc ~/.xinitrc

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

mkdir ~/Temp
cd ~/Temp
git clone https://aur.archlinux.org/i3-volume
cd i3-volume
makepkg -si
cd ~/Temp
rm -rf i3-volume
git clone https://aur.archlinux.org/urxvt-font-size-git
cd urxvt-font-size-git
makepkg -si
cd ~/Temp
rm -rf urxvt-font-size-git

pacman -Rs binutils fakeroot

if [ ! -f "~/.fehbg" ];
then
	echo -e "#!""/bin/sh\nfeh --no-fehbg --bg-fill '$HOME/.wallpaper/gray.png'" > ~/.fehbg
fi
