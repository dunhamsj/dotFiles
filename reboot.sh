#!/bin/bash

if [[ ! ${PWD} = / ]]; then
  echo "Not in /, exiting..."
  exit
fi

killall mpd        2> /dev/null || echo "No mpd processes running"
killall pulseaudio 2> /dev/null || echo "No pulseaudio processes running"
sudo kill `pgrep vncsession` 2> /dev/null || echo "No VNC session running"

drive=/mnt/lump
for line in `lsblk`
do
  if [[ ${line} == *"${drive}"* ]]; then
    sudo umount ${drive}
    break
  fi
done

# stop lxc containers
sudo lxc-stop jellyfin && \
  sudo lxc-stop nginx && \

# unmount /home; systemd doesn't always close
sudo umount /home
error=$?
count=0
while [[ ${count} -lt 10 && ${error} -ne 0 ]]
do
  if [[ ${error} -eq 0 ]]; then
    break
  fi
  echo count=${count}
  PID=`sudo journalctl -b | grep "Starting D-Bus" \
    | tail -n 1 | cut -d" " -f5 | cut -d[ -f2 | cut -d] -f1 \
    | xargs kill`
  sudo umount /home
  error=$?
  count=$((count+1))
done
if [[ ${count} -ge 10 ]]; then
  echo count=$count
  echo Not rebooting
  exit
fi

sudo umount /mnt/litterbox && \
  sudo umount /.snapshots && \
  sudo shutdown -r now
