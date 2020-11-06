#!/bin/bash

printf "停止Kafka Ronnect Rest API...\n"

#kill process by port
fuser -k 8083/tcp
