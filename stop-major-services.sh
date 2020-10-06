#!/bin/bash
printf "停止Kafka services...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#停止schema registry
./bin/schema-registry-stop ./etc/schema-registry/schema-registry.properties

#停止kafka
./bin/kafka-server-stop ./etc/kafka/server.properties

echo 等待Kafka關閉完成
sleep 3

#停止zookeeper
./bin/zookeeper-server-stop ./etc/kafka/zookeeper.properties
