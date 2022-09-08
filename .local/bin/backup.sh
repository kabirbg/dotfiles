#!/bin/sh
while true; do
        while df /mnt/backup | egrep '9.%|100%'
        do
                echo disk full, removing oldest backup...
                find /mnt/backup -type f -printf '%T+ %p\n' | sort | awk -F ' ' '{print $2}' | head -n 1 | xargs rm -rvf
        done
        echo beginning backup @ $(date)
        tar cvzf "/mnt/backup/$(date +'%F-%H.%M.%S').tar" /bin /etc /home /opt /usr /var
        echo finished backup @ $(date)
        sleep 6h
done
