#! /bin/bash

declare -r time=`date +"%H:%M"`
declare -r date=`date +"%a %d %B"`

notify-send -t 1000 -i "$HOME/.icons/256x256/clock.png" "${date}" "${time}"

exit 0