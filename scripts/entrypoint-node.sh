#!/bin/bash

export kafka_home='/tmp/kafka'

### Start kafka
nohup $kafka_home/bin/kafka-server-start.sh $kafka_home/config/server.properties > $kafka_home/logs/kafka.log 2>&1 &
