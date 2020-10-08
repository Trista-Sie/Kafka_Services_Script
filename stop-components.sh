#!/bin/bash
printf "停止Kafka其他元件服務...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#停止ksqldb
./bin/ksql-server-stop ./etc/ksqldb/ksql-server.properties

#停止rest proxy
./bin/kafka-rest-stop ./etc/kafka-rest/kafka-rest.properties

#kill process by port
#停止kafka-connect-api
fuser -k 8083/tcp
