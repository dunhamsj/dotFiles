#!/bin/bash

killall mpd 2> /dev/null || echo "No mpd process running"
sudo umount /mnt/shared && \
sudo umount /mnt/lump && \
sudo shutdown -r
