#!/usr/bin/bash

sudo chown git: /home/git -R
test -d /home/git/repositories || bash /scripts/setup.sh
sudo /usr/sbin/sshd -D
