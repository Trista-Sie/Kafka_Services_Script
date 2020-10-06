#!/bin/bash

# 進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

# 執行Show Topic的指令
./bin/kafka-topics --list --zookeeper localhost:2181
