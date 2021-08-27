#!/bin/sh
while true
do
        rsync -av / /media/kabir/Backup/iMac/Arch >& /home/kabir/.local/share/backup.log
done
