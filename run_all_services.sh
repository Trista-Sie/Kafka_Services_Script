#!/bin/bash

printf "\nKafka start to run！\n"
cd ~/confluent-5.5.1

services_status(){

    serviceListening "Zookeeper" 2181
    serviceListening "Kafka" 9092
    serviceListening "Schema Registry" 8081
    serviceListening "Kafka Connect Api" 8083
    serviceListening "Kafka Rest Proxy" 8082
    serviceListening "Ksqldb" 8088
}

check_result(){
    
    service=$1
    if [ $2 != 0 ];then
        echo "$1 run error！"
        exit "Error code $2!"
    
    #else
        #echo "$1 檢查結束！"
        #echo "$1 啟動完成！"
    
    fi
}

serviceListening(){
    service=`netstat -tuln | grep $2`
    #service=`ps aux|grep $2 |grep -v "grep"`
    if [ "$service" != "" ]
    then
	    echo "$1 on！"
    else
        echo "$1 stopped！"
    fi
}

run_services(){
    #zookeeper
    ./bin/zookeeper-server-start ./etc/kafka/zookeeper.properties >/dev/null 2>&1 &
    sleep 5
    check_result zookeeper $?

    #kafka
    ./bin/kafka-server-start ./etc/kafka/server.properties >/dev/null 2>&1 &
    sleep 8
    check_result kafka $?
    
    #schema registry
    ./bin/schema-registry-start ./etc/schema-registry/schema-registry.properties >/dev/null 2>&1 &
    sleep 6
    check_result schemaRegistry $?

    #kafka connect rest api
    ./bin/connect-distributed ./etc/schema-registry/connect-avro-distributed.properties >/dev/null 2>&1 &
    sleep 7
    check_result connectApi $?

    #rest proxy
    ./bin/kafka-rest-start ./etc/kafka-rest/kafka-rest.properties >/dev/null 2>&1 &
    sleep 6
    check_result resrProxy $?

    #ksqldb
    ./bin/ksql-server-start ./etc/ksqldb/ksql-server.properties >/dev/null 2>&1 &
    sleep 6
    check_result ksqldb $?
}

run_services

#確認服務啟動狀態
services_status