mkdir ~/.config
mkdir ~/.config/sway
mkdir ~/.config/dunst
mkdir ~/.config/waybar
mkdir ~/.config/nvim
mkdir ~/.config/gtk-3.0
mkdir ~/.wallpaper

cp config/sway/* ~/.config/sway/
cp config/waybar/* ~/.config/waybar/
cp config/dunst/* ~/.config/dunst/
cp config/ranger/* ~/.config/ranger
cp -r config/nvim/* ~/.config/nvim
cp config/gtk-3.0/* ~/.config/gtk-3.0

cp .bashrc ~/.bashrc
cp .bash_profile ~/.bash_profile
cp .tmux.conf ~/.tmux.conf

cp ./wallpaper/* ~/.wallpaper/
