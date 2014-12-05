#!/system/bin/sh
/system/xbin/gsmMuxd -p /dev/ttyS2 -b 115200 -d -w -r -s /dev/mux /dev/ptmx /dev/ptmx /dev/ptmx
chown radio.radio /dev/mux*
