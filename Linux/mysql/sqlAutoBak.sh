#!/usr/bin/bash
mysqldump -h127.0.0.1 -udumper -p123456 BindDB > /mysqlbak/app/app_full/app_BindDB_`date +%Y%m%d%H%M%S`.sql
sleep 10
mysqldump -h127.0.0.1 -udumper -p123456 devops > /mysqlbak/app/app_full/app_devops_`date +%Y%m%d%H%M%S`.sql
sleep 10
mysqldump -h127.0.0.1 -udumper -p123456 it_devops > /mysqlbak/app/app_full/app_it_devops_`date +%Y%m%d%H%M%S`.sql
sleep 10
mysqldump -h127.0.0.1 -udumper -p123456 software_assistant > /mysqlbak/app/app_full/app_software_assistant_`date +%Y%m%d%H%M%S`.sql
sleep 10
mysqldump -h127.0.0.1 -udumper -p123456 wiki > /mysqlbak/app/app_full/app_wiki_`date +%Y%m%d%H%M%S`.sql
sleep 10
mysqldump -h127.0.0.1 -udumper -p123456 xiaoyaoji > /mysqlbak/app/app_full/app_xiaoyaoji_`date +%Y%m%d%H%M%S`.sql
sleep 10
mysqldump -h127.0.0.1 -udumper -p123456 zabbix > /mysqlbak/app/app_full/app_zabbix_`date +%Y%m%d%H%M%S`.sql
sleep 10
mysqldump -h127.0.0.1 -udumper -p123456 zentao > /mysqlbak/app/app_full/app_zentao_`date +%Y%m%d%H%M%S`.sql

