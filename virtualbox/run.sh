#!/bin/bash
sudo docker run -d -v /tmp/.X11-unix/:/tmp/.X11-unix/ -e DISPLAY=unix$DISPLAY --privileged --name virtualbox evalle/virtualbox
