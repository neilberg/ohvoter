#!/bin/sh
mkdir ../ohvoterdata
url=$(awk -F = '{print }' 01_setdatasource.txt)
for i in $(cat 01_setdatasource.txt);
do
wget $url --no-check-certificate --content-disposition -P '../ohvoterdata/'                                                                     
done
