#!/bin/bash

$KAFKA_HOME/bin/kafka-topics.sh --$ACTION --zookeeper $ZOOKEEPER --replication-factor $REPLICATION_FACTOR --partition $PARTITIONS --topic $TOPIC
