# Use more cores when using make
[ $(nproc) -gt 3 ] && alias make="/usr/bin/make -j $(expr $(nproc) / 3 \* 2)" && export MAKEFLAGS='-j '$(expr $(nproc) / 3 \* 2)

# Install AUR packages
for app in yay neovim-plug siji-git ttf-font-logos sway-launcher-desktop redshift-wayland-git
do
 	cd /tmp
 	git clone https://aur.archlinux.org/$app.git
 	cd $app
 	makepkg -si --noconfirm
done

# Install nvim plugins
nvim -E +PlugInstall +qall
echo "Type :qa! when the installation is finished." | nvim +"CocInstall coc-clangd coc-python coc-css coc-html coc-java coc-tsserver coc-json coc-go"

