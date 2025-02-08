#!/bin/bash
set -eu
cd $(dirname $0)

for file in set-bat-thresh.service; do
  [ ! -e /etc/systemd/system/$file ] && sudo ln -s $(pwd)/$file /etc/systemd/system/$file
done

cd /etc/systemd/system/
sudo systemctl enable set-bat-thresh.service
