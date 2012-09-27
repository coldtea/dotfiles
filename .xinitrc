# rehash fonts
xset +fp /usr/share/fonts/misc
xset +fp /usr/share/fonts/local
xset fp rehash

# disable PC speaker
xset -b

# set mouse pointer
xsetroot -cursor_name left_ptr

# set keyboard layout
setxkbmap -layout 'us,ru' -option 'grp:caps_toggle'

# set random wallpaper
exec ./bin/set-wallpaper.sh &

# fix misbehaving Java applications
wmname LG3D

# autolocker
xautolock -time 30 -locker "i3lock -c 000000" &

# start applications
xbindkeys &
xcompmgr -n &
urxvtd -q -f -o &
dropboxd &
emacs --daemon &
unclutter &

# start window manager supplied as argument by slim
DEFAULT_SESSION=xmonad

case $1 in
xmonad)
        exec xmonad
        ;;
xfce4)
        exec startxfce4
        ;;
*)
        exec $DEFAULT_SESSION
        ;;
esac
