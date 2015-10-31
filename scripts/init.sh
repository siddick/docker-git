#!/usr/bin/bash

chown git: /home/git -R
test -d /home/git/repositories || su git -lc "bash /scripts/setup.sh"
/usr/sbin/sshd -D
