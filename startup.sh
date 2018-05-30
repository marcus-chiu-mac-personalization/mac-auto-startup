#! /bin/sh

###############
# DEFINITIONS #
###############

DIR_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

#############
# FUNCTIONS #
#############

open_new_desktop () {
    sleep 1
osascript ${DIR_PATH}/new.desktop.scpt
    sleep 1
}

maximize_current_window () {
    osascript -e 'tell application "System Events" to keystroke "m" using { command down, shift down }'
}

fullscreen_current_window () {
    osascript -e 'tell application "System Events" to keystroke "f" using { command down, control down }'
}

open_finder () {
    open ~/ComputerScience
    sleep 1
}

open_terminal_version_one () {
    # open terminal - default htop.sh
    # could not pass the command `htop` so we pass a shell script that contains the command
    open -a Terminal.app ${DIR_PATH}/htop.sh
    sleep 1
}

open_terminal_version_two () {
    osascript -e 'tell application "Terminal" to do script "htop"'
}

open_chrome () {
    open -a Google\ Chrome.app
}


########
# MAIN #
########

sleep 1                     # let it sleep for maximize to work properly
open_finder                 # open finder
open_terminal_version_one   # open terminal
maximize_current_window     # maximize terminal window
open_new_desktop            # open new desktop
open_chrome                 # open chrome


