#!/bin/bash
free -m | awk 'NR==2{printf "%02d%%", 0$3*100/$2 }'
