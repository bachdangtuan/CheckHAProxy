#!/bin/bash
source ./variable/setting.sh


echo $SERVICE
status=$(systemctl is-active $SERVICE | awk '{print $1}')

echo $status

if [ "$status" != "active" ]; then
    echo "Service đang không hoạt động" > inactive.text
    service keepalived stop


else
    echo "Service đang hoạt động" > active.txt

fi















