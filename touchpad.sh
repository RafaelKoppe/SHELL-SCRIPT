#!/bin/bash

device=14
state=`xinput list-props "$device" | grep "Device Enabled" | grep -o "[01]$"`

if [ "$state" -eq '1' ];then
  xinput --disable "$device"
  notify-send --icon=/usr/share/icons/Pop/scalable/status/touchpad-disabled-symbolic.svg "Disabled" "Touchpad Desativado."  
  #notify-send -a 'Touchpad' 'Disabled' -i input-touchpad
  #zenity --info --text "Touchpad Disabled" --timeout=2
else
  xinput --enable "$device"
  notify-send --icon=/usr/share/icons/Pop/scalable/status/touchpad-enabled-symbolic.svg "Enabled" "Touchpad Ativado."
  #notify-send -a 'Touchpad' 'Enable' -i input-touchpad
  #zenity --info --text "Touchpad ENABLED" --timeout=2
fi
