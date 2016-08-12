#!/bin/bash

if [[ $BABL_DEBUG ]]; then
  set -x
fi

ACTION=${ACTION-create}
REPLICATION_FACTOR=${REPLICATION_FACTOR-1}
PARTITIONS=${PARTITIONS-1}

case $ACTION in
  create)
    $KAFKA_HOME/bin/kafka-topics.sh --$ACTION --zookeeper $ZOOKEEPER --replication-factor $REPLICATION_FACTOR --partition $PARTITIONS --topic $TOPIC
    ;;
  alter)
    $KAFKA_HOME/bin/kafka-topics.sh --$ACTION --zookeeper $ZOOKEEPER --partition $PARTITIONS --topic $TOPIC
    ;;
  delete|describe)
    $KAFKA_HOME/bin/kafka-topics.sh --$ACTION --zookeeper $ZOOKEEPER --topic $TOPIC
    ;;
  list)
    $KAFKA_HOME/bin/kafka-topics.sh --$ACTION --zookeeper $ZOOKEEPER
    ;;
  *)
    echo unknown action $ACTION, possible options: create/alter/delete/list
esac
