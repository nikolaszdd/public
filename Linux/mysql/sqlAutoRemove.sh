#!/usr/bin/bash
dir01=/mysqlbak/app/app_binlog
dir02=/mysqlbak/app/app_full

find $dir01 -maxdepth 1 -type f -mtime +7 |xargs rm -rf
sleep 5
find $dir02 -maxdepth 1 -type f -mtime +7 |xargs rm -rf

