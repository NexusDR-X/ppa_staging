#!/usr/bin/env sh
# Runs BEFORE installing package
id rmsgw >/dev/null 2>&1 || sudo useradd -c 'Linux RMS Gateway' -d /etc/rmsgw -s /bin/false rmsgw
sudo mkdir -p /etc/rmsgw
[ -d /usr/local/etc/rmsgw ] && sudo rm -rf /usr/local/etc/rmsgw
sudo mkdir -p /usr/local/etc
sudo ln -s /etc/rmsgw /usr/local/etc/rmsgw
sudo mkdir -p /etc/rmsgw/hooks
sudo mkdir -p /usr/local/share/applications
sudo systemctl is-active --quiet ax25 && sudo systemctl stop ax25.service
exit 0
