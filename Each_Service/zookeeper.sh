#!/bin/bash
printf "啟動Zookeeper...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#啟動zookeeper(執行檔：zookeeper-server-start；參數檔：zookeeper.properties)
./bin/zookeeper-server-start ./etc/kafka/zookeeper.properties &
