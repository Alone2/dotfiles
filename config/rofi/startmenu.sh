out=$( ( ps a | grep 'rofi -modi drun, run -show drun -theme .config/rofi/Arc-Dark-Modified2') | wc -l)
[ "$out" -ge 2 ] && (
    echo $out
    pkill rofi
) || (
    rofi -modi drun,run -show drun -theme .config/rofi/Arc-Dark-Modified3 -font "hack 13" -show-icons -icon-theme "Breeze Dark" &
)

