#!/bin/bash
source ./variable/setting.sh


echo $SERVICE
status=$(systemctl is-active $SERVICE | awk '{print $1}')

echo $status

if [ "$status" != "active" ]; then
    echo "Service đang hoạt động"
else
    echo "Service đang không hoạt động"
fi















