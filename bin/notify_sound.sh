#! /bin/bash

usage() {
	echo "Usage $0 [options]" >&2
	exit 123
}

show_volume() {
	local level=`amixer get Master | tail -n1 | cut -b 3- | cut -d ' ' -f 5 | tr -d [/[/]]`
	if [ $(echo ${level//%}) -le 25 ]
	then
		notify-send "$level" -u normal -t 500 -i "/usr/share/icons/Adwaita/256x256/status/audio-volume-low.png"
	else 
		if [ $(echo ${level//%}) -gt 25 ] && [ $(echo ${level//%}) -le 75 ]
		then
		notify-send "$level" -u normal -t 500 -i "/usr/share/icons/Adwaita/256x256/status/audio-volume-medium.png"
		else
		notify-send "$level" -u normal -t 500 -i "/usr/share/icons/Adwaita/256x256/status/audio-volume-high.png"
		fi
	fi
}

show_muted() {
	 local is_muted=`amixer get Master | tail -n1 | cut -b 3- | cut -d ' ' -f 6 | tr -d [/[/]]`
	if [ "$is_muted" = "on" ]
	then
	    notify-send "Unmuted" -u normal -t 500 -i "/usr/share/icons/Adwaita/256x256/status/audio-volume-low.png"
	else
	    notify-send "Muted" -u normal -t 500 -i "/usr/share/icons/Adwaita/256x256/status/audio-volume-muted.png"
	fi
}

if [ $# -ne 1 ]
then
	usage
fi

# Parsing options
while [ -n "$1" ]
do
	case "$1" in
	    -v) show_volume ;;
	    -m) show_muted  ;;
	esac
	shift
done

exit 0
