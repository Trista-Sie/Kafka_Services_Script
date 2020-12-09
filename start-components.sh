#!/bin/bash
printf "\n開始啟動Kafka其他元件服務...\n"

#啟動control center
~/Kafka_Services_Script/Each_Service/control-center.sh &
echo 等待Control Center啟動完成
sleep 5

#啟動kafka connect API
~/Kafka_Services_Script/Each_Service/kafka-connect-api.sh &

#sleep for 10sec
echo 等待connect api 啟動
sleep 3

#啟動Rest proxy
~/Kafka_Services_Script/Each_Service/rest-proxy.sh &

#啟動ksqlDB
~/Kafka_Services_Script/Each_Service/ksqldb.sh &
