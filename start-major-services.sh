#!/bin/bash
printf "\n啟動Kafka services三個必要服務\n"

#啟動zookeeper
./Each_Service/zookeeper.sh &

#啟動kafka
./Each_Service/kafka.sh &

echo 等待Kafka啟動完成
sleep 5

#啟動schema registry
./Each_Service/schema-registry.sh &