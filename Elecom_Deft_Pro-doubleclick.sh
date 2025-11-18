#!/bin/bash
##### Elecom mapping script by pwnbait AKA Fredward Goodboy
#
# This script is deprecated in desktop environments that do not rely on X
# Wayland is too cool for me.
#
# Otherwise:
#
# This script will automatically install xbindkeys with 'apt'
# and create a configuration file to cause button 10 on the
# Elecom Deft Pro trackball mouse to perform a double-click action.
#
# This script can easily be modified for any button presses.
#
# Run this script in a terminal for best results.
##### If it does not work, I was never here.
##### If it does not work, fix it and tell me about it.
##### 	fredwardtheincomparable@gmail.com
#
#
echo "Hi-diddly-doodly, neighborino!"
echo "Get that password ready!"
sleep 5
# Update & install
echo "Updating packages and installing xbindkeys packages and dependencies..."
sudo apt update -y && sudo apt install xbindkeys xbindkeys-config xdotool -y
#
# Create config file or append instructions to existing file
echo "Creating and/or modifying  ~/.xbindkeysrc config file..."
CONFIG_FILE="${HOME}/.xbindkeysrc"
DOUBLE_CLICK="xdotool click --repeat 2 1"
BUTTON_MAP="	b:10 + release"
cat >> "$CONFIG_FILE" <<EOF
"${DOUBLE_CLICK}"
${BUTTON_MAP}
EOF
#
# Set permissions
echo "Adjusting permissions on ~/.xbindkeysrc file..."
chmod 644 "$CONFIG_FILE"
#
# kill xbindkeys
echo "Killing any running instances of xbindkeys..."
killall -HUP xbindkeys
#
# run xbindkeys
echo "Starting xbindkeys..."
xbindkeys
#
# Unnecessary obscure pop culture reference:
echo "The dishes are DONE, man!"
#
# END OF FILE

