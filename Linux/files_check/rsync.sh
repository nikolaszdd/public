#!/usr/bin/bash
export PATH=/bin:/usr/bin:/usr/local/bin

SRC=/nikolas

DEST1=synology

Client1=192.168.50.24

User=rsync
Passfile=/etc/rsync.passwd

[ ! -e $Passfile ] && exit 2

#wait for change

inotifywait -mrq --timefmt '%y-%m-%d %H:%M' --format '%T %w%f %e' --event modify,create,move,delete,attrib $SRC | while read line

do

echo "$line" >> /var/log/inotify_nikolas 2>&1

# 同步数据到192.168.50.24，下面命令其实就是rsync -avz /nikolas/ zdd@192.168.50.24::synology，然后把输出结果记录在sync_synology中 

rsync -avz --delete --progress --password-file=$Passfile $SRC ${User}@$Client1::$DEST1 >> /var/log/sync_synology 2>&1

done &

