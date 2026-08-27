#!/bin/bash

if [[ ! ${PWD} = / ]]; then
  echo "Not in /, exiting..."
  exit
fi

killall mpd        2> /dev/null || echo "No mpd processes running"
killall pulseaudio 2> /dev/null || echo "No pulseaudio processes running"

drive=/mnt/lump
for line in `lsblk`
do
  if [[ ${line} == *"${drive}"* ]]; then
    sudo umount ${drive}
    break
  fi
done

sudo lxc-stop jellyfin && \
  sudo lxc-stop nginx && \
  sudo umount /mnt/litterbox && \
  sudo umount /.snapshots && \
  sudo umount /home && \
  sudo shutdown -r now
