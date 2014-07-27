#!/bin/bash

# current directory
cd $( dirname "${BASH_SOURCE[0]}" )

# Wait for keyboard/mouse event
javac -classpath JNativeHook.jar Listen.java
if java -classpath .:JNativeHook.jar Listen
then
	exit 0
fi

# Take a picture with the webcam
/usr/local/bin/imagesnap -w 1 snaps/snap.png

exit 1

