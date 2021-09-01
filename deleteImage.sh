#!/bin/bash

DATE=$(date -d "3 days ago" +%Y%m%d)
DIR=/www/wwwroot/likeshare/public/upload/image/$DATE/

if [ -d $DIR ]; then
    echo "delete $DIR" >> /opt/task/delete.log
    rm $DIR -rf
fi
