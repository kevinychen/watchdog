Watchdog
========

A humorous (but insecure) script to guard your Linux Ubuntu machine.

Directions:
-----------

Run the `setup.sh` script. Press `Ctrl+Alt+G` to "guard" your machine with Watchdog.

When anyone moves the mouse, Watchdog will show a "TRESPASSER" message, take a photo of the trespasser (with the webcam), locks the computer, and emits a haughty message. Upon logging back, you can see who the intruder was.

Notes:
------

Watchdog is for entertainment purposes only. Although it will lock the computer in seconds after the mouse is moved, it is possible for an adversary with knowledge that Watchdog is running to use keyboard commands and disable the script, thereby gaining access to your computer.

The setup script enables the `Ctrl+Alt+G` keyboard shortcut. If the shortcut does not work, you may have to run `watchdog.sh` manually instead.

Mac:
----

Install QuickSilver and set a keyboard shortcut to the script mac/watchdog.applescript. You will need to allow assistive devices in system preferences. Optionally, set the screensaver directory to mac/snaps so that the culprit's picture will be shown upon screen lock.

You may also need to install imagesnap and Play Sound.
