#!/usr/bin/env sh
# Runs BEFORE installing package
#sudo apt -y remove --purge libhamlib2 libhamlib-dev libhamlib-utils*
#sudo apt-mark hold libhamlib2 libhamlib-dev libhamlib-utils
sudo rm -f /usr/local/lib/libhamlib*
exit 0
