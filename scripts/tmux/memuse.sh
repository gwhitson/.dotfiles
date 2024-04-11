#!/bin/bash
free -m | awk 'NR==2{printf "%d%%", 0$3*100/$2 }'
