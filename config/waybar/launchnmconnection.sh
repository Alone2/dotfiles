app="networkmanagertui"
application="alacritty -o window.padding.x=0 -o window.padding.y=0 --class $app -e nmtui-connect"
if [ "$1" != "" ] 
then
    app=$2
    application="$1"
fi

x=$(expr $(swaymsg -t get_tree | jq '[.rect.width]' | sed "2q;d") - 600 - 5)
y=$(expr $(swaymsg -t get_tree | jq '[.rect.height]' | sed "2q;d") - 600 - 31)

[ "$(swaymsg -t get_tree | grep $app)" = '' ] && (

$application & 
while [ "$(swaymsg -t get_tree | grep $app)" = '' ]
do
    sleep 0
done

sway [app_id="$app"] floating enable, resize set 600 600, move position $x $y 

) || kill $(ps aux | grep "$application" | cut -b 10-16) 

