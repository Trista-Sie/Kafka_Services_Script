#!/bin/bash

printf "請輸入想produce的topic名稱\n"
read produce_topic

./bin/kafka-console-producer --broker-list localhost:9092 --topic $produce_topic
