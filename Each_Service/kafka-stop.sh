#!/bin/bash
printf "停止Kafka...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#停止kafka
./bin/kafka-server-stop ./etc/kafka/server.properties
