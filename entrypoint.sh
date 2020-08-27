#!/bin/sh -l

cd $GITHUB_WORKSPACE
mkdir ../xvfb

Xvfb :99 -fbdir ../xvfb -screen 0 $1 &
export DISPLAY=:99

$4 &

sleep $3

convert xwd:../xvfb/Xvfb_screen0 png:$2
