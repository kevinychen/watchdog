#!/bin/bash

# current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/resources

# disallow Ctrl+C
trap '' 2

# sense next mouse event; requires gcc
gcc $DIR/listen.c -o $DIR/listen -lX11
$DIR/listen

# take snapshot from webcam; requires mplayer
mplayer -vo png -frames 1 tv://
mv 00000001.png $DIR/snapshot.png

# show signs; requires gthumb
gthumb --fullscreen $DIR/trespasser_sign.jpg &
sleep 1
gthumb --fullscreen $DIR/snapshot.png &
sleep 2

# play evil laugh; requires mpg123
amixer set Master 100%
mpg123 $DIR/evil_laugh.mp3 &

# allow Ctrl+C again
trap 2

# lock the computer
gnome-screensaver-command --lock

