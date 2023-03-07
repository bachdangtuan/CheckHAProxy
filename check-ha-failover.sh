#!/bin/bash
source ./variable/setting.sh


echo $SERVICE
status=$(systemctl is-active haproxy | awk '{print $1}')


if [$status == 'active'] ; then
    echo "Service đang hoạt động"
else
    echo "Service đang không hoạt động"
fi
