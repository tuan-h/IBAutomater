#!/bin/bash

pkill Xvfb
pkill xvfb-run

Xvfb :1 -screen 0 1024x768x24 2>&1 >/dev/null &
export DISPLAY=:1
xvfb-run java -cp $1/ibgateway/$2/jars/*:./*:./IBAutomater.jar ibautomater.IBAutomater -ibdir $1 -user $3 -pwd $4 -mode $5 -port $6
