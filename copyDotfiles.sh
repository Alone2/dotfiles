mkdir ~/.config
mkdir ~/.config/i3
mkdir ~/.config/polybar
mkdir ~/.config/dunst
mkdir ~/.config/picom
mkdir ~/.config/rofi
mkdir ~/.config/nvim
mkdir ~/.config/gtk-3.0
mkdir ~/.wallpaper

cp config/i3/config ~/.config/i3/config
cp .Xresources ~/.Xresources
cp config/polybar/* ~/.config/polybar
cp config/dunst/* ~/.config/dunst
cp config/picom/* ~/.config/picom
cp config/rofi/* ~/.config/rofi
cp config/nvim/* ~/.config/nvim
cp config/gtk-3.0/* ~/.config/gtk-3.0
cp .bashrc ~/.bashrc
cp .bash_profile ~/.bash_profile
cp .xinitrc ~/.xinitrc
cp .fehbgLOWBAT ~/.fehbgLOWBAT 
cp ./wallpaper/default.png ~/.wallpaper/default.png
cp ./wallpaper/black.png ~/.wallpaper/black.png

echo -e "#!""/bin/sh\nfeh --no-fehbg --bg-fill '$HOME/.wallpaper/black.png'" > ~/.fehbgLOWBAT
chmod +x ~/.fehbgLOWBAT

if [ ! -f "$HOME/.fehbg" ];
then 
	echo -e "#!""/bin/sh\nfeh --no-fehbg --bg-fill '$HOME/.wallpaper/default.png'" > ~/.fehbg
	chmod +x ~/.fehbg
fi
