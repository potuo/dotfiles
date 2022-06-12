#!/bin/bash
printf "投屏:1)投影 2)扩展 3)双屏 4)多屏 5)关闭"
read num
case $num in
    1)
        xrandr --output HDMI-1 --same-as eDP-1 --auto
        ;;
    2)
        xrandr --output HDMI-1 --right-of eDP-1 --auto
        ;;
    3)
        xrandr --output HDMI-1 --mode 1366x768 --rate 60
        ;;
    4)
        xrandr --output HDMI-1 --off --output HDMI-2 --auto
        ;;
    5)
        xrandr --output HDMI-1 --off
    *)
        echo "error"
esac
