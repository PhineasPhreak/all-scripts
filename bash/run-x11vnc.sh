#!/bin/bash

#
# packages : x11vnc, tigervnc-standalone-server
# Launch x11vnc with using passwd
# Options:
# -many : keep the connection alive
# -rfauth : use authentication on RFB protocol
# -display : X11 server display to connect to, usually :0.
x11vnc -many -rfbauth .vnc/passwd -display :0

# Activate X server key autorepeat
# xset r on
