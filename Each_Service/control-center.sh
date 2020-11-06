#!/bin/bash

printf "啟動Control-Center...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#啟動control center(執行檔：control-center-start；參數檔：control-center-dev.properties)
./bin/control-center-start ./etc/confluent-control-center/control-center-dev.properties &