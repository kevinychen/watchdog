
delay 1

try
    display notification "Watchdog: guarding"
    do shell script "/Users/kchen/Code/watchdog/mac/watchdog.sh"
    display notification "Watchdog: stopped"
on error
    set Volume 10

    tell application "Play Sound"
        set soundFile to "Macintosh HD:Users:kchen:Code:watchdog:resources:shall_not_pass.mp3" as alias
        play soundFile

        delay 1

        tell application "System Events"
            set ss to screen saver "iLifeSlideshows"
        end tell

        tell application "ScreenSaverEngine"
            launch
        end tell
    end tell
end try
