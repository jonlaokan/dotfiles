#! /bin/bash

declare -r pacman_updates=$(checkupdates | wc -l)
declare -r aur_updates=$(yay -Pn)
declare -r icon_path='/usr/share/icons/Adwaita/256x256/status/'

notify-send -t 1000 -i "${icon_path}software-update-available.png" \
	"Updates" $"Pacman :${pacman_updates} \n Aur: ${aur_updates}"

exit 0
