xrdb -merge ~/.Xresources
wal -R
sh ~/.local/bin/xrandr-mon
#sh ~/.local/bin/fehbg &
#~/.local/bin/dwmbar &
slstatus &
setxkbmap us
urxvtd -q -o -f
exec dwm
