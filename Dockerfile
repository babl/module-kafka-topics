FROM wurstmeister/kafka:0.9.0.1
RUN wget -O- "http://s3.amazonaws.com/babl/babl-server_linux_amd64.gz" | gunzip > /bin/babl-server && chmod +x /bin/babl-server
ENV ZOOKEEPER=zookeeper-kafka:2181
ENV REPLICATION_FACTOR=1
ENV PARTITIONS=1
ADD app /bin/app
RUN chmod +x /bin/app
CMD ["babl-server"]
