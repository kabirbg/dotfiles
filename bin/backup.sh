#!/bin/sh
while true
do
        if df /media/kabir/backup | egrep '9.%|100%' ; then
                echo disk full, removing oldest backup...
                find /media/kabir/backup -type f -printf '%T+ %p\n' | sort | awk -F ' ' '{print $2}' | head -n 1 | xargs rm -rvf
        fi
        tar -cvf "/media/kabir/backup/$(date +'%F-%H.%M.%S').tar" /bin /etc /home /root /sbin /usr /var
        echo sleeping @ $(date)
        sleep 3h
done
