#!/bin/sh
url=#$(awk -F = '{print $2}' 01_setdatasource.txt)
for i in $(cat 01_setdatasource.txt);
do 
wget $url -P '/home/ohvoterdata/'
done
