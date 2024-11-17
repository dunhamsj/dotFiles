#!/usr/bin/env bash

cd /mnt/shared/documents/dotFiles
git pull
git add .
git commit -m "updates"
git push
