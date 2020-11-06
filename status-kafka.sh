#!/bin/sh

#zookeeper 2181
zookeeper=$(netstat -tuln | grep ":2181")
if [ "$zookeeper" != "" ]; then
	echo "Zookeeper is running on port:2181\n"
else
	echo "Zookeeper stopped completed\n"
fi

#kafka broker 9092
kafka=$(netstat -tuln | grep ":9092")
if [ "$kafka" != "" ]; then
	echo "kafka is running on port:9092\n"
else
	echo "Kafka stopped completed\n"
fi

#control center 9091
cc=$(netstat -tuln | grep ":9021")
if [ "$cc" != "" ]; then
	echo "Control Center is running on port:9021\n"
else
	echo "Control Center stopped completed\n"
fi

#schema registry 8081
schema=$(netstat -tuln | grep ":8081")
if [ "$schema" != "" ]; then
	echo "Schema Registry is running on port:8081\n"
else
	echo "Schema Registry stopped completed\n"
fi

#kafka connect rest API 8083
kafka_connect=$(netstat -tuln | grep ":8083")
if [ "$kafka_connect" != "" ]; then
	echo "Kafka Connect Rest API is running on port:8083\n"
else
	echo "Kafka Connect Rest API stopped completed\n"
fi

#Rest Proxy 8082
rest_proxy=$(netstat -tuln | grep ":8082")
if [ "$rest_proxy" != "" ]; then
	echo "Rest Proxy is running on port:8082\n"
else
	echo "Rest Proxy stopped completed\n"
fi

#KsqlDB 8088
ksqlDB=$(netstat -tuln | grep ":8088")
if [ "$ksqlDB" != "" ]; then
	echo "KsqlDB is running on port:8088\n"
else
	echo "KsqlDB stopped completed\n"
fi
