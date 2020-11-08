# mkdir ~/Temp
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si

#yay -S i3-volume urxvt-font-size-git neovim-plug siji-git polybar picom-rounded-corners ttf-font-logos

for app in i3-volume urxvt-font-size-git neovim-plug siji-git polybar picom-rounded-corners ttf-font-logos
do
 	cd /tmp
 	git clone https://aur.archlinux.org/$app.git
 	cd $app
 	makepkg -si --noconfirm
 done

nvim -E +PlugInstall +qall
echo "Type :q! when the installation is finished." | nvim +"CocInstall coc-clangd coc-python coc-css coc-html coc-java coc-tsserver coc-json"
