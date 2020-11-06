#!/bin/bash
printf "啟動Kafka...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#啟動kafka(執行檔：kafka-server-start；參數檔：server.properties)
./bin/kafka-server-start ./etc/kafka/server.properties &
