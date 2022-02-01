#!/bin/sh
while df /media/kabir/backup | egrep '9.%|100%' ; do
        echo disk full, removing oldest backup...
        find /media/kabir/backup -type f -printf '%T+ %p\n' | sort | awk -F ' ' '{print $2}' | head -n 1 | xargs rm -rvf
done
echo beginning backup @ $(date)
tar -cvf "/media/kabir/backup/$(date +'%F-%H.%M.%S').tar" /bin /etc /home /root /sbin /usr /var
echo finished backup @ $(date)
