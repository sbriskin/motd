#!/bin/sh
# On CentOS and other OSes without systemd motd 
# place this file in /etc/profile.d/ to activate dynamic MOTD 
#
# Do not use this file on Debian-based distros!
#
LC_ALL=en_US.UTF-8
export LC_ALL
/usr/bin/motd
