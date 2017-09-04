#!/bin/bash

scan-home() {
sudo xrandr --output eDP1 --transform 1,0,0,0,1,0,0,0,1
sudo xrandr --output HDMI1 --transform 1,0,-59,0,1,-25,0,0,1
}

display-omnium() {
	xrandr --output HDMI1 --scale 2x2 --auto --panning 3840x2160+3200+0 --right-of eDP1
	xrandr --output eDP1 --auto --scale 1x1
}
