xrdb -merge ~/.Xresources
wal -R
sh ~/.local/bin/xrandr-mon
sh ~/.local/bin/fehbg &
~/.local/bin/dwmbar &
setxkbmap us
exec dwm
