#!/bin/bash

scan-home() {
sudo xrandr --output eDP1 --transform 1,0,0,0,1,0,0,0,1
sudo xrandr --output HDMI1 --transform 1,0,-59,0,1,-25,0,0,1
}
