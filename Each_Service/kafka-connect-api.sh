#!/bin/bash
printf "啟動Kafka Connect API...\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#啟動kafka connect API(執行檔：connect-distributed；參數檔：connect-avro-distributed.properties)
./bin/connect-distributed ./etc/schema-registry/connect-avro-distributed.properties &
