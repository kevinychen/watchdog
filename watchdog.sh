#!/bin/bash

# current directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/resources

# disallow Ctrl+C
trap '' 2

# sense next mouse event; requires gcc
gcc $DIR/listen.c -o $DIR/listen -lX11
$DIR/listen

# turn up sound
amixer set Master 100%

# take snapshot from webcam; requires mplayer
mplayer -vo png -frames 1 tv://
wait
mv 00000001.png $DIR/snapshot.png

# concatenate webcam snapshot with trespasser image; requires imagemagick
convert $DIR/trespasser_sign.jpg $DIR/snapshot.png -append $DIR/combined.jpg

# play "You shall not pass!"
mpg123 $DIR/shall_not_pass.mp3 &

# show signs; requires gthumb
gthumb --fullscreen $DIR/combined.jpg &
sleep 2

# lock the computer
gnome-screensaver-command --lock

# allow Ctrl+C again
trap 2

