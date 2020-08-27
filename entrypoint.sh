#!/bin/sh -l

Xvfb :99 -screen 0 $1 &
export DISPLAY=:99

$4 &

sleep $3

xwd -root -silent | convert xwd:- png:$2