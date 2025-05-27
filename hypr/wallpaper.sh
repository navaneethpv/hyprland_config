#!/bin/bash

WALLPAPERS=(/home/navaneeth/Downloads/wallpaper/explorer_green_day.jpg\
            /home/navaneeth/Downloads/wallpaper/catching-the-desert.jpeg \
            /home/navaneeth/Downloads/wallpaper/car_on_mars.jpg\
            /home/navaneeth/Downloads/wallpaper/explorer_orange_sunset.jpg
            /home/navaneeth/Downloads/wallpaper/explorer-robot.png\
            /home/navaneeth/Downloads/wallpaper/copper_mountain.jpg)

while true; do
    for WALL in "${WALLPAPERS[@]}"; do
        hyprctl hyprpaper wallpaper "eDP-1,$WALL"
        swww img "$WALL" --transition-type fade --transition-duration 5
        sleep 120
    done
done