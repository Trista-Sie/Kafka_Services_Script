#!/bin/bash

printf "請輸入欲刪除的Topic名稱:"
read topic_name
# 進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1
./bin/kafka-topics  --delete --zookeeper localhost:2181  --topic $topic_name
