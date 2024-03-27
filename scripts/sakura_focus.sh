#!/bin/bash
wmctrl -l | grep -e '\ $'

if [ $? -eq 0 ] ; then
    t1=$(wmctrl -l | grep -e '\ $' | awk '{print $1}')
    wmctrl -i -a $t1
else
    /usr/bin/sakura
fi
