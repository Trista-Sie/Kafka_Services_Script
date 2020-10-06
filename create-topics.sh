#!/bin/bash

printf "請輸入欲創建的Topic名稱:"
read topic_name
printf "請輸入欲創建的partition數量(只可為數字):"
read partition_amount
# printf "請輸入欲創建的replication數量(只可為數字):"
# read replication_amount

# 進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

./bin/kafka-topics --zookeeper localhost:2181 --create --topic $topic_name --partitions $partition_amount --replication-factor 1

