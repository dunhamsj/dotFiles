#!/bin/bash

if [[ ! ${PWD} = / ]]; then
  echo "Not in /, exiting..."
  exit
fi

killall mpd 2> /dev/null || echo "No mpd process running"
sudo umount /mnt/litterbox && \
sudo umount /.snapshots && \
sudo umount /home && \
sudo shutdown now
