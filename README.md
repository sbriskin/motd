The message of the day
======================

This simple scripts shows some useful information at the beginning of a new terminal session.

![MOTD Example](https://briskin.org/app/motd/motd.jpg)

Requirements
------------

awk, bash, bc, cat, cut, df, grep, groups, host, hostname, id, lsblk, ps, sed, sort, source, touch, tty, ulimit, uname, uniq, uptime, wc, who, whoami

Optional requirements
---------------------

* `lsb_release`
* `figlet` or `toilet` or `sysvbanner` - for hostname banner.

Installation
------------

Run `sudo make install` to install scripts

For systems without the systemd motd package (like CentOS) place `motd.sh` file into `/etc/profile.d` directory.

For systems without `/etc/profile.d` add `/usr/bin/motd` execution line in the end of `/etc/profile` file.

Uninstall
---------

Run `sudo make uninstall` to uninstall scripts

For systems without the systemd motd package (like CentOS) remove `motd.sh` file from `/etc/profile.d` directory.

For systems without `/etc/profile.d` remove `/usr/bin/motd` execution line from the end of `/etc/profile` file.
