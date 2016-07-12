#!/bin/bash

if [[ $BABL_DEBUG ]]; then
  set -x
fi

$KAFKA_HOME/bin/kafka-topics.sh --$ACTION --zookeeper $ZOOKEEPER --replication-factor $REPLICATION_FACTOR --partition $PARTITIONS --topic $TOPIC
