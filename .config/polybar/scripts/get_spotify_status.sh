#!/bin/bash

if [ "$(playerctl status spotify)" = "Stopped" ]; then
    echo "No music is playing"
elif [ "$(playerctl status spotify)" = "Paused"  ]; then
    for p in $(pidof polybar); do
        polybar-msg -p $p hook spotify-play-pause 2 >/dev/null;
    done
    playerctl metadata spotify --format "{{ title }} - {{ artist }}"
else # Can be configured to output differently when player is paused
    for p in $(pidof polybar); do
        polybar-msg -p $p hook spotify-play-pause 1 >/dev/null;
    done
    playerctl metadata spotify --format "{{ title }} - {{ artist }}"
fi
