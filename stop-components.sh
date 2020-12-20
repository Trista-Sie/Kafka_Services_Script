#!/bin/bash
printf "停止Kafka其他元件服務...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#停止control center
~/Kafka_Services_Script/Each_Service/control-center-stop.sh &
echo 等待Control Center關閉完成
sleep 5

#停止ksqldb
~/Kafka_Services_Script/Each_Service/ksqldb-stop.sh &

#停止rest proxy
~/Kafka_Services_Script/Each_Service/rest-proxy-stop.sh &

#kill process by port
#停止kafka-connect-api
fuser -k 8083/tcp
