#!/bin/bash
printf "請輸入欲查詢的Topic名稱:"
read topic_name

# 進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

# 查詢特定topic配置
./bin/kafka-topics --zookeeper localhost:2181 --topic $topic_name --describe
