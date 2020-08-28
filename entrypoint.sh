#!/bin/sh -l

tar -zxf /mesa.tar.gz
export LD_LIBRARY_PATH=/mesa/local/lib/x86_64-linux-gnu
ls /mesa/local/lib/x86_64-linux-gnu
export GALLIUM_DRIVER=swr

cd $GITHUB_WORKSPACE
mkdir ../xvfb

Xvfb :99 -fbdir ../xvfb -screen 0 $1 &
export DISPLAY=:99

chmod +x $4
$4 &

sleep $3

convert xwd:../xvfb/Xvfb_screen0 png:$2
