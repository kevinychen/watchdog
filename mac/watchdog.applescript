
delay 1

try
    do shell script "/Users/kchen/Code/watchdog/mac/watchdog.sh"
on error
    set Volume 2

    tell application "Play Sound"
        set soundFile to "Macintosh HD:Users:kchen:Code:watchdog:resources:shall_not_pass.mp3" as alias
        play soundFile

        tell application "System Events"
            set ss to screen saver "iLifeSlideshows"
        end tell

        tell application "ScreenSaverEngine"
            activate
        end tell
    end tell
end try
