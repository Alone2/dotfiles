app=$1
appclass=$2
workspacenum=$3
$app & 
while [ "$(swaymsg -t get_tree | grep $app | grep class)" = "" ]; do sleep 0; done && sway [class="$app"] move container to workspace $workspacenum
