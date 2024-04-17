#!/bin/bash
# Write the string of arguments of this script to the /etc/motd file

# All args
NEWMOTD="$@"

# Desired hosts
HOSTPATTERN="deploy"

# Work in forks of two to cpy string (content) to a destination (dest) using the buildin ansible module
ansible $HOSTPATTERN --fork 2 -m copy -a "content=\"$NEWMOTD\" dest=/etc/motd"

# Werify contents of /etc/motd on all hosts
ansible $HOSTPATTERN -a 'cat /etc/motd'    # no "-m" option ansible assumes it is "command" module
