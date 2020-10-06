#!/bin/bash

printf "[Set Topic's Messages Retention]\n"

printf "請輸入欲設定的Topic名稱:"
read topic_name

printf "請輸入Message欲保留的時間長短(單位為毫秒):"
read retention_time

# 進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

# 43200000 ms = 12 hr
./bin/kafka-topics --zookeeper localhost:2181 --alter --topic $topic_name --config retention.ms=$retention_time
