#!/usr/bin/env bash

cd /mnt/shared/documents/dotFiles
git pull
yay -Qqe > /mnt/shared/documents/dotFiles/yayQqe.txt
git add .
git commit -m "updates"
git push
