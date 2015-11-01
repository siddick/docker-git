#!/usr/bin/bash

sudo chown git: /home/git -R
test -d /home/git/repositories || bash /scripts/setup.sh
gitolite setup --hooks-only
sudo /usr/sbin/sshd -D
