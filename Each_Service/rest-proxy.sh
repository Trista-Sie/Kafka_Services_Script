#!/bin/bash
printf "啟動Rest Proxy...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#啟動Rest proxy(執行檔：kafka-rest-start；參數檔：kafka-rest.properties)
./bin/kafka-rest-start ./etc/kafka-rest/kafka-rest.properties &
