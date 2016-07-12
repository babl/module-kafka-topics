#!/bin/bash

if [[ $BABL_DEBUG ]]; then
  set -x
fi

ACTION=${ACTION-create}
REPLICATION_FACTOR=${REPLICATION_FACTOR-1}
PARTITIONS=${PARTITIONS-1}

$KAFKA_HOME/bin/kafka-topics.sh --$ACTION --zookeeper $ZOOKEEPER --replication-factor $REPLICATION_FACTOR --partition $PARTITIONS --topic $TOPIC
