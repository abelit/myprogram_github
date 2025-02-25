#!/bin/bash
#Script name:yum_rsync.sh
RsyncBin="rsync"
RsyncPerm="-avrt --delete --no-iconv --bwlimit=1000 --exclude isos"
epel='/var/www/html/yum_repo/epel/7/'
LogFile='/var/www/html/yum_repo/epel/rsync_yum_log'
Date=`date +%Y-%m-%d`
#check
function check {
if [ $? -eq 0 ];then
    echo -e "\033[1;32mRsync is success!\033[0m" >>$LogFile/$Date.log
else
    echo -e "\033[1;31mRsync is fail!\033[0m" >>$LogFile/$Date.log
fi
}
if [ ! -d "$LogFile" ];then
    mkdir $LogFile
fi
#rsync epel 7
echo 'Now start to rsync epel 7!' >>$LogFile/$Date.log
$RsyncBin $RsyncPerm rsync://mirrors.yun-idc.com/epel/7/x86_64 $epel >>$LogFile/$Date.log
check