#!/bin/bash
xhost + && docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix ubuntu:x11 /bin/bash
