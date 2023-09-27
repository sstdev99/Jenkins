#!/bin/bash
###############################################
# Jenkins STart and Status Check Scripts
# Author : Sachin Thokal
# Date : 27-Sep-2023
# Version : V1
################################################
status=$(sudo systemctl status jenkins | grep Active | awk '{print $2}')
#echo $status

if [ $status = "active" ]
then
        echo "Jenkins Active..."
else
        echo "Jenkins Not Active..."
fi
