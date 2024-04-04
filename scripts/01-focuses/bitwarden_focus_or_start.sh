#!/bin/bash
ps -aux | awk '{print $11}' | grep -a bitwarden

if [ $? -eq 0 ] ; then
    wmctrl -a 'Bitwarden'
else
    /snap/bin/bitwarden %U
fi
