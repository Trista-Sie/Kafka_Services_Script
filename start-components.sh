#!/bin/bash
printf "\n開始啟動Kafka其他元件服務...\n"

#啟動kafka connect API
./Each_Service/kafka-connect-api.sh &

#sleep for 10sec
echo 等待connect api 啟動
sleep 3

#啟動Rest proxy
./Each_Service/rest-proxy.sh &

#啟動ksqlDB
./Each_Service/ksqldb.sh &
