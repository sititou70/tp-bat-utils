#!/bin/bash
set -eu

sudo systemctl disable set-bat-thresh.service

for file in set-bat-thresh.service; do
  [ -e /etc/systemd/system/$file ] && sudo rm -rf /etc/systemd/system/$file
done
