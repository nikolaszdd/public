@echo off
title �鿴����trim
color 1f
echo �鿴�Ƿ��Ѿ�����trim
echo �����ʾ���Ϊ0�����ʾ�Ѿ�������trim���ܣ����Ϊ1���ʾδ����trim����

fsutil behavior query DisableDeleteNotify


echo �����ָ�����trim����

fsutil behavior set DisableDeleteNotify 0