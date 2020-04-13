[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
exec dbus-launch i3
