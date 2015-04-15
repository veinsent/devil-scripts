#!/bin/bash
server=backup_server
filename=etc-mods.tar.bz2
mkdir /var/mnt
mount /dev/sda2 /var/mnt
curl -a -T "/var/mnt/$filename" ftp://backup:backup@$server/`date +%F`.`hostname`.$filename
umount /dev/sda2
rmdir --ignore-fail-on-non-empty /var/mnt

 