#!/bin/bash
printf "停止Kafka services...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#停止schema registry
~/Kafka_Services_Script/Each_Service/schema-registry-stop.sh &
echo 等待Schema Registry關閉完成
sleep 5

#停止kafka
~/Kafka_Services_Script/Each_Service/kafka-stop.sh &
echo 等待Kafka關閉完成
sleep 5

#停止zookeeper
~/Kafka_Services_Script/Each_Service/zookeeper-stop.sh &
