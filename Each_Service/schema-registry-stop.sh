#!/bin/bash
printf "停止Schema Registry...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#停止schema registry
./bin/schema-registry-stop ./etc/schema-registry/schema-registry.properties &