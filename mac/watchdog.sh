#!/bin/bash

# Wait for keyboard/mouse event
javac -classpath JNativeHook.jar Listen.java
if java -classpath .:JNativeHook.jar Listen
then
	exit
fi

# disallow Ctrl+C
trap '' 2

# Take a picture with the webcam
imagesnap -w 1 snap.png

# Show the picture of the culprit
qlmanage -p snap.png &

# Set the volume
osascript -e "set Volume 1"

# Play the mp3
afplay shall_not_pass.mp3

# Auto-lock the screen
open -a /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app

# Reset settings
osascript -e "set Volume 0"
trap 2

