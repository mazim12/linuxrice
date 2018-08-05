#!/bin/bash
scrot /tmp/screen.png
convert /tmp/screen.png -filter Gaussian -resize 5% -define filter:sigma=1.0 -resize 2000% /tmp/screen.png
#convert /tmp/screen.png -paint 3 -modulate 80 /tmp/screen.png
#convert /tmp/screen.png -paint 3 /tmp/screen.png
[[ -f ~/.config/i3/lock.png ]] && convert /tmp/screen.png  ~/.config/i3/lock.png -gravity center -composite -matte /tmp/screen.png
mocp -P
i3lock -u -e -i /tmp/screen.png
rm /tmp/screen.png
