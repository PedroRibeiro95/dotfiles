#!/bin/zsh
printf "%.0f\n" "$(xbacklight -ctrl intel_backlight -getf)" 
