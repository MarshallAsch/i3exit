#!/bin/bash

declare -a _lock_messages=("This is locked hahaha" "Please enter the password to login" "This is Marshall's go away")


lock() {
    i3lock --clock -B 2 --indicator --pass-media-keys --pass-volume-keys \
        -e -f --insidecolor "115d00bb" --greetertext "${_lock_messages[$(($RANDOM % 3))]}" --greeterpos "3640:850"
}


case "$1" in
    lock)
        lock
        ;;
    logout)
        i3-msg exit
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    sleep)
        lock
        xset dpms force off
        ;;
    *)
        echo "Usage: $0 {lock|logout|reboot|shutdown|sleep}"
        exit 2
    esac

exit 0
