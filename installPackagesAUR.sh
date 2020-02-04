mkdir ~/Temp
cd ~/Temp
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si

yay -S i3-volume urxvt-font-size-git neovim-plug siji-git polybar

nvim -E +PlugInstall +qall
