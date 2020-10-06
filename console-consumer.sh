#!/bin/bash

printf "請輸入想consume的topic名稱\n"
read consume_topic

./bin/kafka-console-consumer --bootstrap-server localhost:9092 --topic $consume_topic --from-beginning
