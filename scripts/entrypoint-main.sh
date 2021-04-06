#!/bin/bash

export kafka_home='/tmp/kafka'

### Start zookeeper
nohup $kafka_home/bin/zookeeper-server-start.sh $kafka_home/config/zookeeper.properties > $kafka_home/logs/zookeeper.log 2>&1 &

### Start kafka
nohup $kafka_home/bin/kafka-server-start.sh $kafka_home/config/server.properties > $kafka_home/logs/kafka.log 2>&1 &
