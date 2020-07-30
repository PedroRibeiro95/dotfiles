#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 25 \
        --delay 0.3 \
        --match-command "playerctl status spotify" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true '/home/cooper/.config/polybar/scripts/get_spotify_status.sh' &

wait
