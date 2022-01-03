@echo off
title 查看开启trim
color 1f
echo 查看是否已经开启trim
echo 如果显示结果为0，则表示已经开启了trim功能，结果为1则表示未开启trim功能

fsutil behavior query DisableDeleteNotify


echo 下面的指令将开启trim功能

fsutil behavior set DisableDeleteNotify 0