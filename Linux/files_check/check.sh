#/usr/bin/bash
# by: zjy
# 2019.09.18


echo Welcome to use zjy\'s check tools...
echo now is `date`
echo When the files is not exists,the result will be written into the log file.
echo To compare the distinction of the logs file ,then you will get what you want ...
echo Good luck.

check_src=/home/zdd/src
check_dest=/home/zdd/dest
logs_dir=/home/zdd/check_logs
date_time=`date +%Y%m%d%H%M%S`
files_list=/home/zdd/check.list

ls "$check_src" | shuf -n 5 > $files_list

mkdir -p $logs_dir



while read line

do
    if [ -f $check_src/$line ];then
      /usr/bin/md5sum $check_src/$line >> $logs_dir/check_result_"$date_time".log
      /usr/bin/md5sum $check_dest/$line >> $logs_dir/check_result_"$date_time".log
      echo '------------------------------------------------------------' >>$logs_dir/check_result_"$date_time".log
    else
      echo '----------'"$check_dest"/"$line"是目录跳过md5校验'--------------' >>$logs_dir/check_result_"$date_time".log
    fi
done < "$files_list"

echo Please refer to the result file "$logs_dir"/check_result_"$date_time".log
sleep 5

