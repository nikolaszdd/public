#!/usr/bin/bash
# by zjy
# 2019-09-04

source_dir=/var/lib/mysql
dest_dir=/mysqlbak/app/app_binlog
files=`ls $source_dir |grep mysql-bin`
datetime=`date +%Y%m%d%H%M%S`

for file in $files

do
    file_bak="$datetime"_"$file"
    cp $source_dir/$file $dest_dir/$file_bak

done
