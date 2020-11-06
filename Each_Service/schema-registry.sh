#!/bin/bash
printf "啟動Schema Registry...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#啟動schema registry(執行檔：schema-registry-start；參數檔：schema-registry.properties)
./bin/schema-registry-start ./etc/schema-registry/schema-registry.properties &
