#!/bin/bash
printf "停止Zookeeper...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#停止zookeeper
./bin/zookeeper-server-stop ./etc/kafka/zookeeper.properties
