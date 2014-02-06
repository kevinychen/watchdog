Watchdog
========

A humorous (but insecure) script to guard your Linux Ubuntu machine.

Directions:
-----------

Run the `setup` script. Press `Ctrl+Alt+G` to "guard" your machine with Watchdog.

When anyone moves the mouse, Watchdog will show a "TRESPASSER" message, take a photo of the trespasser (with the webcam), locks the computer, and finally emits a haughty laugh. Upon logging back, you can see who the intruder was.

Notes:
------

Watchdog is for entertainment purposes only. Although it will lock the computer in seconds after the mouse is moved, it is possible for an adversary with knowledge that Watchdog is running to act quickly and disable the script, thereby gaining access to your computer.

The setup script enables the `Ctrl+Alt+G` keyboard shortcut. If the shortcut does not work, you may have to run `watchdog.sh` manually instead.
