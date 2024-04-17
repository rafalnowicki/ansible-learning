#!/bin/bash

# The host command is provided by the "bind-utils" package
for name in appserver{1..5}.labnet
do
    host -4 $name
    # or you could use ping lol (fping isn't packaged for RHEL btw)
    # ping -c1 Sname | awk '/PING/ {gsub("[(,)]",""); print $2,$3}'
done

