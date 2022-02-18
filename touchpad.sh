#!/bin/bash

device=14
state=`xinput list-props "$device" | grep "Device Enabled" | grep -o "[01]$"`

if [ "$state" -eq '1' ];then
  xinput --disable "$device"
  zenity --info --text "Touchpad Disabled" --timeout=2
else
  xinput --enable "$device"
  zenity --info --text "Touchpad ENABLED" --timeout=2
fi
