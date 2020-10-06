#!/bin/bash
printf "停止Rest proxy...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#停止rest proxy
./bin/kafka-rest-stop ./etc/kafka-rest/kafka-rest.properties
