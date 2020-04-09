mkdir ~/Temp
cd ~/Temp
git clone https://aur.archlinux.org/yay.git
cd yay 
makepkg -si

yay -S i3-volume urxvt-font-size-git neovim-plug siji-git polybar picom-rounded-corners

nvim -E +PlugInstall +qall
echo "Type ':q!' when the installation is finished." | nvim +"CocInstall coc-clangd coc-pathon coc-css coc-html coc-java coc-tsserver coc-json"
