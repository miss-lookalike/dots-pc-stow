#!/usr/bin/env bash
items="Shutdown\nReboot\nLock"
output=$(echo -e $items | walker --dmenu -H)
if [[ "$output" == "Shutdown" ]]; then
    echo "Execute shutdown command"
    shutdown -h now
elif [[ "$output" == "Reboot" ]]; then
    echo "Execute reboot command"
    reboot
elif [[ "$output" == "Lock" ]]; then
    echo "Execute lock command"
    hyprlock
else
    echo "Please select a command"
fi
