#!/bin/bash
free -m | awk 'NR==2{printf "%.2f%%", 0$3*100/$2 }'
