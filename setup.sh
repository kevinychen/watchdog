#!/bin/bash

# Check that we are using sudo.
if [ $(whoami) != "root" ]
then
    echo >&2 "Error: run this script with sudo."
    exit 1
fi

# current directory
ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR=$ROOT/resources

# Check for gcc, mplayer, gthumb, and mpg123
for lib in gcc mplayer gthumb mpg123
do
    if ! hash $lib 2> /dev/null
    then
        apt-get install $lib
    fi
done

# Check for imagemagick
if ! hash convert 2> /dev/null
then
    apt-get install imagemagick
fi

# Check for libx11 libraries
if ! locate libx11-dev > /dev/null
then
    apt-get install libx11-dev
fi

# Create keyboard shortcut
cp $DIR/template.xml $DIR/%gconf.xml
sed -i -e "s#\\\$DIR#$ROOT#" $DIR/%gconf.xml
TIME=`date +%s`
sed -i -e "s#\\\$TIME#$TIME#" $DIR/%gconf.xml
mkdir -p $HOME/.gconf/desktop/gnome/keybindings/custom0/
cp $DIR/%gconf.xml $HOME/.gconf/desktop/gnome/keybindings/custom0/

