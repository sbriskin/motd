The message of the day
======================

This simple scripts shows some useful information at the beginning of a new terminal session.

Installation
------------

Run `sudo make install` to install scripts

For systems without the systemd motd package (like CentOS) place `motd.sh` file into `/etc/profile.d` directory.

Uninstall
---------

Run `sudo make uninstall` to uninstall scripts

For systems without the systemd motd package delete `/usr/bin/motd` execution line from the `/etc/profile` file.
