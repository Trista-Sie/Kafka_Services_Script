#!/bin/bash

printf "停止Control-Center...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#停止control center(執行檔：control-center-stop；參數檔：control-center-dev.properties)
#/bin/control-center-stop ./etc/confluent-control-center/control-center-dev.properties &
fuser -k 9021/tcp