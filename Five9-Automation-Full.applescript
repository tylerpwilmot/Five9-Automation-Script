quit application "Safari"
tell application "System Preferences" to activate
tell application "System Preferences"
    reveal anchor "input" of pane id "com.apple.preference.sound"
end tell
tell application "System Events" to tell process "System Preferences"
    tell table 1 of scroll area 1 of tab group 1 of window 1
        select (row 1 where value of text field 1 is "Plantronics C725")
    end tell
end tell
tell application "System Preferences" to activate
tell application "System Preferences"
    reveal anchor "output" of pane id "com.apple.preference.sound"
end tell
tell application "System Events" to tell process "System Preferences"
    tell table 1 of scroll area 1 of tab group 1 of window 1
        select (row 1 where value of text field 1 is "Plantronics C725")
    end tell
end tell
quit application "System Preferences"

tell application "Terminal"
    do shell script "ps ax | grep \"java.*$1\" | grep -v grep | awk '{ print \"kill \" $1 }' | sh"
    do shell script "rm ~/Library/Safari/History.db"
    do shell script "rm -rf ~/Library/Caches/com.apple.safari"
    do shell script "javaws -uninstall"
    do shell script "open /applications/salesforceopenctiagentapp.jnlp"
    quit
end tell
tell application "Safari"
    activate
    delay 2
    tell application "Safari" to open location "https://login.salesforce.com"
end tell