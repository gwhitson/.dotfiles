#!/bin/bash
wmctrl -l | grep -a "0x05400003"

if [ $? -eq 0 ] ; then
    wmctrl -i -a "0x05400003"
else
    /usr/bin/sakura
fi
