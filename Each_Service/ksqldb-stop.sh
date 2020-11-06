#!/bin/bash
printf "停止KsqlDB...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#停止ksqldb
./bin/ksql-server-stop ./etc/ksqldb/ksql-server.properties &
