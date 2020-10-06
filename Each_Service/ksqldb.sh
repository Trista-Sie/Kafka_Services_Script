#!/bin/bash
printf "啟動KsqlDB\n"

#進到confluent platform 5.5.1資料夾
cd ~/confluent-5.5.1

#啟動ksqlDB(執行檔：ksql-server-start；參數檔：ksql-server.properties)
./bin/ksql-server-start ./etc/ksqldb/ksql-server.properties &
