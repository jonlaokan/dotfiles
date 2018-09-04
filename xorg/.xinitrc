export QT_AUTO_SCREEN_SCALE_FACTOR=1
export _JAVA_AWT_WM_NONREPARENTING=1

xset r rate 270 30
#bspwm mouse "X" fix
xsetroot -cursor_name left_ptr 

xrdb ~/.Xresources

xrandr --output eDP-1 --auto --output HDMI-2 --auto --scale 1.5x1.5 --right-of eDP-1
bluetoothctl power on

exec bspwm
