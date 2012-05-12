# disable PC speaker
xset -b

# set mouse pointer
xsetroot -cursor_name left_ptr

# set keyboard layout
setxkbmap -layout 'us,ru' -option 'grp:caps_toggle'

# set random wallpaper
exec ./bin/set-wallpaper.sh &

# start tmux
exec urxvt -e bash -c "tmux -q has-session && exec tmux attach-session -d || exec tmux new-session -n$USER -s$USER@$HOSTNAME" &

# fix misbehaving Java applications
wmname LG3D

# start applications
xcompmgr -n &
urxvtd -q -f -o &
dropboxd &
thunderbird &
emacs --daemon &
unclutter &

# start window manager supplied as argument by cdm
wm_bin="$1"
exec ck-launch-session bash -c "devmon & ${wm_bin}"

