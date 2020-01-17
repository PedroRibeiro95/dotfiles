#!/bin/zsh
printf "%.0f\n" "$(xbacklight -ctrl tpacpi::kbd_backlight -getf)" 
